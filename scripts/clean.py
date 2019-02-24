#!/usr/bin/env python3

import pathlib

delete_list = ['.png']

path = pathlib.Path().home()

for file in path.iterdir():
    if file.suffix in delete_list:
        file.unlink()
