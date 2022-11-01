import subprocess


def xrandr(with_arguments: list = None):
    xrandr_command = ['xrandr']

    if with_arguments:
        xrandr_command.extend(with_arguments)

    process = subprocess.Popen(xrandr_command, stdout=subprocess.PIPE)
    stdout, stderr = process.communicate()

    if stderr:
        raise ChildProcessError(f'Error occurred calling xrandr:  {stderr}')

    return stdout.decode('utf-8')


def get_connected_devices(xrandr_output):
    return [line for line in xrandr_output.split('\n') if 'disconnected' not in line and 'connected' in line]


def construct_xrandr_command_arguments(connected_devices: list, try_force_rate=None):
    def normalize_mode(mode: str) -> str:
        """
        Transforms a connected device mode into a working xrandr mode.

        example: 2560x1440+0+0 -> 2560x1440
        :param mode:
        :return:
        """
        return mode.split('+')[0]

    """
    From a list of connected devices, construct a xrandr command to organize them.
    :return:
    """
    arguments = []
    for device in connected_devices:
        device_name, status, mode, *_ = device.split(' ')
        _args = f'--output {device_name} --mode {normalize_mode(mode)}'
        if try_force_rate:
            _args += f' --rate {try_force_rate}'
        arguments += _args.split(' ')
    return arguments


if __name__ == '__main__':
    xrandr_output = xrandr()
    connected_devices = get_connected_devices(xrandr_output)
    xrandr_arguments = construct_xrandr_command_arguments(connected_devices, try_force_rate=144)
    xrandr(xrandr_arguments)
