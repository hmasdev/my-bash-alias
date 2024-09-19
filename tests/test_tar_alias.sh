#!/bin/bash -l
shopt -s expand_aliases
set -e
# const
test_workspace="./test-tar_workspace"
test_direc="./test-directory"
test_file1="hoge.txt"
test_file2="fuga.txt"
# setup
source ./myalias.sh

rm -rf $test_workspace || echo "$test_workspace not found"
mkdir -p $test_workspace
pushd $test_workspace

mkd $test_direc
echo $test_file1 > $test_direc/$test_file1
echo $test_file2 > $test_direc/$test_file2

tarc $test_direc.tar.gz $test_direc
tart $test_direc.tar.gz
rm -r $test_direc
tarx $test_direc.tar.gz

popd
