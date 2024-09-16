#!/bin/bash -l
shopt -s expand_aliases
set -xe
# const
test_workspace='./test-python_uv_workspace'
# setup
source ./myalias.sh

# run
rm -rf $test_workspace || echo "$test_workspace not found"
uv init $test_workspace
pushd $test_workspace

upip install schedule
uva ruquests
uvs
uvr which python

popd
