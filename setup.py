try:
    # assert False
    from setuptools import setup
    from setuptools.command.install import install
    from setuptools.command.install_lib import install_lib
    kw = {'install_requires': 'hy >= 0.9.12'}
except:
    from distutils.core import setup
    from distutils.command.install import install
    from distutils.command.install_lib import install_lib
    kw = {}

# XXX: This is a hack
import os, shutil

orig_run = install_lib.run

def run(self):
    self.skip_build = True
    if not os.path.isdir(self.build_dir):
        os.makedirs(os.path.join(os.path.curdir, self.build_dir))
        shutil.copy('cadr.hy', os.path.join(self.build_dir, 'cadr.hy'))
    orig_run(self)

install_lib.run = run

assert install.sub_commands[0][0] == 'install_lib'
install.sub_commands[0] = (install.sub_commands[0][0], lambda *_: True)

import hy
from hytest import __version__

try:
    with open('README.md', 'r') as f:
        readme = f.read()
except:
    readme = ''

setup(name='cadr',
      version=str(__version__),
      description='A cadr implementation for Hy',
      long_description=readme,
      author='CknDev',
      classifiers=[
        'License :: OSI Approved :: MIT License',
        'Operating System :: OS Independent',
        'Topic :: Software Development :: Pre-processors'
      ],
      requires=['hy (>=0.9.12)'],
      scripts=['cadr'],
      **kw)
