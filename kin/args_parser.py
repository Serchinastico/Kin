import argparse


class ArgsParser:
    def __init__(self):
        self.argparse = self.get_argparse()

    def parse_args(self):
        return self.argparse.parse_args()

    def print_help(self):
        self.argparse.print_help()

    def get_argparse(self):
        description = "Verifies the correctness of your project.pbxproj file"
        parser = argparse.ArgumentParser(description=description)
        parser.add_argument("-v", "--verbose",
                            help="prints information on screen",
                            action="store_true")
        group = parser.add_mutually_exclusive_group()
        group.add_argument("-t", "--test",
                           help="run all tests",
                           action="store_true")
        group.add_argument("-f", "--file",
                           help="path to your project.pbxproj file")
        return parser
