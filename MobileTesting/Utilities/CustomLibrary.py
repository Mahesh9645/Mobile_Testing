import os

def execute_command(cmd):
    print('Execute Command - ' + cmd)
    # os.system('adb root')
    # os.system('adb remount')
    os.system(cmd)
