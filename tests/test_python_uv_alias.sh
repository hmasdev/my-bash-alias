#!/bin/bash
set -xe
# const
test_workspace='./test-python_uv_workspace'
# setup
source ./myalias.sh

# run
rm -rf $test_workspace || echo "$test_workspace not found"
mkdir -p $test_workspace
pushd $test_workspace

python -m venv .venv
source .venv/bin/activate
.venv/bin/python -m pip install uv

uv .venv
upip install schedule
uva ruquests
uvs
uvr which python

popd
