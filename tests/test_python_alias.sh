#!/bin/bash
set -xe
# const
test_workspace='./test-python_workspace'
# setup
source ./myalias.sh

# run
rm -rf $test_workspace || echo "$test_workspace not found"
mkdir -p $test_workspace
pushd $test_workspace

rm -rf
py -V
vpy
wpy
wpip
avenv
wpy
wpip
deactivate
avenv .venv
pip install pytest jupyterlab > /dev/null
pyt --help
jup --help
deactivate
rm -rf .venv
wpip
vpya
wpip

popd
