from pathlib import Path
from subprocess import run
import time
import random

#HOMEPATH = Path(__file__).home()
BACKGROUNPATH = f'/home/surister/.backgrounds/back'

"""
Changes background depending on what day range we are. Every range has a different set of
images with matching luminosity.
Background images are called 'back{number}'
number range:

1-10 Day
11-14 Mid day
21-33 Night
"""

range_dict = {
    range(0, 15): range(1, 11),
    range(14, 20): range(11, 15),
    range(20, 25): range(21, 33)}

for k, v in range_dict.items():
    if int(time.strftime('%H')) in k:
        run(['feh', '--bg-fill', f'{BACKGROUNPATH}{random.choice(v)}'])
