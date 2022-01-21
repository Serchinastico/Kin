#!/usr/bin/env python
# -*- coding: utf-8 -*-
import sys
import os


class Tester:
    def __init__(self, verifier):
        self.verifier = verifier
        self.has_errors = False

    def run(self):
        self.test_ok()
        self.test_ko()

    def test_ok(self):
        print("Running all OK tests...")
        base_path = "./tests/ok/"
        for file in self.input_files_in(base_path):
            errors = self.verifier.check_errors(file)
            self.report_test_case(file, not errors)

    def test_ko(self):
        print("Running all KO tests...")
        base_path = "./tests/ko/"
        for file in self.input_files_in(base_path):
            out_path = os.path.splitext(file)[0] + '.out'
            errors = self.verifier.check_errors(file)
            with open(out_path, 'r') as out_file:
                expected_errors = out_file.read().strip()
                found_errors = "\n".join(errors).strip()
                self.report_test_case(file, expected_errors == found_errors)

    def input_files_in(self, path):
        input_files = [path + file for (root, dirs, files) in os.walk(path) 
                                       for file in files if file.endswith('.pbxproj')]
        return input_files

    def report_test_case(self, path, passed):
        if passed:
            passed_mark = "✓"
        else:
            passed_mark = "✗"
            self.has_errors = True

        print(("Testing " + path + "... " + passed_mark))


def main():
    sys.path.insert(0, os.path.abspath('..'))
    from kin.verifier import Verifier
    verifier = Verifier()
    tester = Tester(verifier)
    tester.run()

    if tester.has_errors:
        sys.exit(-1)


if __name__ == '__main__':
    main()
