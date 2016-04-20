#!/usr/bin/env python

import sys
import os
from verifier import Verifier
from grammar.PBXProjLexer import PBXProjLexer
from grammar.PBXProjParser import PBXProjParser


def check_errors(file):
    verifier = Verifier()
    errors = verifier.check_errors(file)
    return errors


def find_target_file():
    target = None

    if len(sys.argv) == 2:
        target = sys.argv[1]
    else:
        for f in os.listdir(os.getcwd()):
            if f.endswith(".xcodeproj"):
                target = os.path.join(f, "project.pbxproj")

    return target


def assert_valid_target_file(target):
    if not target:
        print("ERROR: Unable to find project.pbxproj \
file in the current directory\n")
        print("Usage: kin [project.pbxproj]\n\
\n\
Verifies the correctness of your project.pbxproj file.\n\
When called with no arguments, Kin will try to find a project.pbxproj \
file in the current project")
        sys.exit(-2)


def assert_no_errors(errors):
    if errors:
        sys.exit(-1)


def print_verification_result(errors):
    if errors:
        for error in errors:
            print("ERROR: " + error)
    else:
        print("CORRECT")


def main():
    target = find_target_file()
    assert_valid_target_file(target)
    errors = check_errors(target)
    print_verification_result(errors)
    assert_no_errors(errors)


if __name__ == '__main__':
    main()
