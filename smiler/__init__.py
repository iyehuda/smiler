"""
This package supplies a simple interface to work with emojis.
"""

from __future__ import print_function, unicode_literals


def smile_string():
    """smile_string
    Generate a smiling unicode string.

    :return: Smile unicode character
    :rtype: unicode | str
    """
    return "\U0001f600"


def smile():
    """smile
    Print a smiling string.
    """
    print(smile_string())
