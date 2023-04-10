import sys
from codecs import open
from os import path

from setuptools import find_packages, setup

if sys.version_info.major < 3:
    raise RuntimeError('Please use python3 to install this package')

here = path.abspath(path.dirname(__file__))

with open(path.join(here, 'README.rst'), encoding='utf-8') as f:
    long_description = f.read()

setup(
    name='kin',
    version='2.1.2',
    description='A simple project.pbxproj verifier',
    long_description=long_description,
    url='https://github.com/Serchinastico/Kin',
    author='Serchinastico',
    author_email='oss@serchinastico.com',
    license='Apache Software',
    classifiers=[
        'Development Status :: 4 - Beta',
        'Intended Audience :: Developers',
        'Topic :: Software Development :: Build Tools',
        'License :: OSI Approved :: Apache Software License',
        'Programming Language :: Python :: 3',
    ],

    keywords='xcode project.pbxproj lint objective-c swift ios',
    packages=find_packages(exclude=['tests']),
    install_requires=[
        'argparse==1.4.0',
        'antlr4-python3-runtime==4.11.1'
    ],
    entry_points={
        'console_scripts': [
            'kin = kin.kin:main',
        ],
    },
)
