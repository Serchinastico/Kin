#!/usr/bin/env python

import sys
import os
from verifier import Verifier
from grammar.PBXProjLexer import PBXProjLexer
from grammar.PBXProjParser import PBXProjParser


def verify_file(file):
    verifier = Verifier()
    errors = verifier.check_errors(file)
    if errors:
        for error in errors:
            print("ERROR: " + error)
    else:
        print("CORRECT")


def find_target_file():
    for f in os.listdir(os.getcwd()):
        if f.endswith(".xcodeproj"):
            return os.path.join(f, "project.pbxproj")
    return None


def print_help():
    print("Usage: kin yourproject.pbxproj\n\
\n\
Verifies the correctness of your project.pbxproj file")


def main():
    if len(sys.argv) == 2:
        target = sys.argv[1]
    else:
        target = find_target_file()

    if target:
        verify_file(target)
    else:
        print("ERROR: Unable to find project.pbxproj \
file in the current directory")


if __name__ == '__main__':
    main()
