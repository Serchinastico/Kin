#!/usr/local/bin/python

import logging
from kin.args_parser import ArgsParser
from tests.tester import Tester
from kin.verifier import Verifier
from grammar.PBXProjLexer import PBXProjLexer
from grammar.PBXProjParser import PBXProjParser


def main():
    logger = logging.getLogger("KIN")
    logging.basicConfig(level=logging.ERROR)

    args_parser = ArgsParser()
    args = args_parser.parse_args()

    if args.verbose:
        logger.setLevel(logging.DEBUG)

    verifier = Verifier()
    if args.test:
        tester = Tester(logger, verifier)
        tester.run()
    elif not args.file:
        args_parser.print_help()
    else:
        errors = verifier.check_errors(args.file)
        print(errors)

if __name__ == '__main__':
    main()
