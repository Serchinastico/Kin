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


def find_target_files():
    target_files = []

    if len(sys.argv) == 2:
        target_files.append(sys.argv[1])
    else:
        for f in os.listdir(os.getcwd()):
            if f.endswith(".xcodeproj"):
                target_files.append(os.path.join(f, "project.pbxproj"))

    return target_files


def print_help():
    print("USAGE: kin [file]\n" +
          "DESCRIPTION: Verifies the correctness of your project.pbxproj " +
          "file. If no arguments are supplied, Kin will try to find a " +
          "project.pbxproj file in the current project.\nARGUMENTS:\n" +
          "\t- file\tOptionally provides the location of your " +
          "project.pbxproj file")


def assert_valid_target_files(target_files):
    if len(target_files) == 0:
        print("ERROR: Unable to find project.pbxproj " +
              "file in the current directory\n")
        print_help()
        sys.exit(-2)
    elif len(target_files) > 1:
        print("ERROR: Too many project.pbxproj files: " +
              str(target_files) + ". Remember you can call Kin with a " +
              "parameter to specify the file you want to verify, i.e. \"kin " +
              str(target_files[0]) + "\"\n")
        print_help()
        sys.exit(-3)


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
    target_files = find_target_files()
    assert_valid_target_files(target_files)

    target_file = target_files[0]
    errors = check_errors(target_file)
    print_verification_result(errors)
    assert_no_errors(errors)


if __name__ == '__main__':
    main()
