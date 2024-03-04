import os
import platform


def is_platform_windows():
    if "windows" in platform.platform().lower():
        return "windows"
    else:
        return "unsupported os"


def execute_command(cmd):
    print('Execute Command - ' + cmd)
    os.system(cmd)
