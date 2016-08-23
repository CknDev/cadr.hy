import os
from setuptools import setup


def read(fname):
    return open(os.path.join(os.path.dirname(__file__), fname)).read()

setup(
    name='cadr',
    version='1.0.0',
    description='A cadr implementation for Hy',
    long_description=read('README.md'),
    packages=['cadr']
    author='CknDev',
    classifiers=[
        'License :: OSI Approved :: MIT License',
        'Operating System :: OS Independent',
        'Topic :: Software Development :: Pre-processors'
    ],
    requires=['hy (>=0.9.12)'],
)
