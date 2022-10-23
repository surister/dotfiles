#!/usr/bin/env python3

import datetime
import logging
import pathlib
from shutil import copytree, copy2

logging.basicConfig(format='Configuration Saver:%(levelname)s:%(message)s', level=logging.DEBUG)

HOME_DIR = pathlib.Path.home()
DOTFILES_PROJECT_DIR = pathlib.Path(__file__).parent
CONFIG_DIR = HOME_DIR / '.config'
VERSIONS_DIRECTORY = 'versions'

DIRS_TO_BE_SAVED = {
    # Key: Name, Value: Path
    'i3': CONFIG_DIR / 'i3',
    'i3statusconf': HOME_DIR / '.i3status.conf',
    'zshrc': HOME_DIR / '.zshrc',
    'scripts': HOME_DIR / 'scripts',
    'screenlayout': HOME_DIR / '.screenlayout'
}


def create_new_version_directory(datetime_: datetime = None) -> pathlib.Path:
    """
    Creates a new version directory given the given :datetime: if none is given
    the current datetime will be used
    :param datetime_:
    :return pathlib.Path:
    """
    used_datetime = datetime_ or datetime.datetime.now()

    new_version_name = (DOTFILES_PROJECT_DIR / VERSIONS_DIRECTORY / used_datetime.strftime('%Y_%M_%d_%H%M%S'))
    new_version_name.mkdir()

    return new_version_name


def copy_file_or_dir(src: pathlib.Path, dest: pathlib.Path):
    if src.is_dir():
        copytree(src, dest / src.name, dirs_exist_ok=True)
    else:
        copy2(src, dest)


if __name__ == '__main__':
    dest = create_new_version_directory()

    for name, src in DIRS_TO_BE_SAVED.items():
        logging.info(f'Saving {name} into {dest}')
        copy_file_or_dir(
            src, dest
        )
