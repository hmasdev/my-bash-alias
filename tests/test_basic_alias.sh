#!/bin/bash -l
shopt -s expand_aliases
set -xe
# const
test_workspace="./test-workspace"
test_direc="./test-directory"
test_file="hoge.txt"
# setup
source ./myalias.sh

rm -rf $test_workspace || echo "$test_workspace not found"
mkdir -p $test_workspace
pushd $test_workspace

mkd $test_direc
c $test_direc
l
la
ll
lla
psux > /dev/null
wh bash
echo $test_direc >> $test_file
gr $test_direc $test_file
c ..

popd

# TODO: test k9
