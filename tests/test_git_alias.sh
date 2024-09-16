#!/bin/bash
set -e
# const
test_workspace='./test-git_workspace'
test_file='a.txt'
test_branch='test_branch'
# setup
source ./myalias.sh

# run
rm -rf $test_workspace || echo "$test_workspace not found"
mkdir -p $test_workspace
pushd $test_workspace

ginit "initial commit"
echo "test" > $test_file
gs
ga $test_file
gs
gc -m "add $test_file"
gchb $test_branch
gb -l
echo "test2" >> $test_file
gs
gd
ga $test_file
gcm "update $test_file"
gl -n 1
gta "0.0.0" -m "init"
gt
gtd "0.0.0"
gch main


popd

# TODO: test gf, gp, gpu and gpull
