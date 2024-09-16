#!/bin/bash
set -xe
# const
test_workspace='./test-python_pyenv_workspace'
# setup
source ./myalias.sh

# run
rm -rf $test_workspace || echo "$test_workspace not found"
mkdir -p $test_workspace
pushd $test_workspace
pyenv install 3.11.3 || echo "Failed to install 3.11.3"
pyenv install 3.11.4 || echo "Failed to install 3.11.4"

export _global_python_version=$(pyenv global || echo "")
export _local_python_version=$(pyenv local || echo "")
pg 3.11.4 && pyenv global $_global_python_version || pyenv global $_global_python_version
pl 3.11.3 && pyenv local $_local_python_version || pyenv local $_local_python_version
pv

popd
