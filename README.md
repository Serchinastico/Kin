![logo][logo]

Kin [![Build Status](https://travis-ci.org/Karumi/Kin.svg?branch=master)](https://travis-ci.org/Karumi/Kin)
===

Kin is a minimalistic tool to check whether your project.pbxproj file is correct.

What does it do?
-----------------

Have you ever found yourself undoing a merge due to a broken Xcode build? Then Kin is your tool. It will parse your project configuration file and detect errors.

How does it work?
-----------------

Kin is just a syntax checker built with ANTLR 4 with a very thin layer to be usable from command line. On the fly syntax checking integration for text editors and IDEs is a work in progress (see the "Text editor/IDE integration" section below).

Usage
-----------------

Install Kin with your favorite python package manager.

Using `pip`
```
pip install kin
```

Using `easy_install`
```
easy_install kin
```

Once installed, use Kin from your Xcode project directory. Kin will automatically detect where your project configuration is located and check whether it is correct.

```
$> kin
CORRECT
```

If there is an error in your configuration file, Kin will return the offending line and a short description of the problem found.

```
$> kin
ERROR: line 400:3 mismatched input ')' expecting 'inputPaths'
```

Optionally, you can provide the location of your project.pbxproj to Kin:

```
$> kin myProject/myProject.xcodeproj/project.pbxproj
CORRECT
```

Text editor/IDE integration
---------------------------

The following text editor and IDE integration packages are available:

Emacs

- [flycheck-pbxproj](https://github.com/danielmartin/flycheck-pbxproj)

Do you want to contribute?
--------------------------

Feel free to add any useful feature to Kin, we will be glad to improve it with your help.

Keep in mind that your PRs **must** be validated by Travis-CI. Please, run your tests locally with `./tests/tester.py` before submiting your code.

License
-------

    Copyright 2016 Karumi

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

[logo]: art/logo.png
