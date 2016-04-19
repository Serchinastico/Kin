#!/usr/bin/env python

import sys
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


def print_help():
    print("Usage: kin yourproject.pbxproj\n\
\n\
Verifies the correctness of your project.pbxproj file")


def main():
    if len(sys.argv) == 2:
        verify_file(sys.argv[1])
    else:
        print_help()


if __name__ == '__main__':
    main()
