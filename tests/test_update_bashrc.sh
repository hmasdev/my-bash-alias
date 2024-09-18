#!/bin/bash -l
shopt -s expand_aliases
set -xe
# preparation
BASHRC_ALT=./.bashrc.alt
DUMMY_LINE="#DUMMYLINE_FOR_TEST"
START_LINE="######StartMyBashAlias######"
END_LINE="######EndMyBashAlias######"
echo > $BASHRC_ALT
source ./myalias.sh

# test
# CASE: initial call
echo "CASE: initial call"
# Initialize
echo > $BASHRC_ALT
# Call
update_my_bash_alias $BASHRC_ALT
# Assert
grep "alias co='code'" $BASHRC_ALT

# CASE: update call
echo "CASE: update call"
# Initialize
echo > $BASHRC_ALT
echo $START_LINE >> $BASHRC_ALT
echo $DUMMY_LINE >> $BASHRC_ALT
echo $END_LINE >> $BASHRC_ALT
# Call
update_my_bash_alias $BASHRC_ALT
# Assert
grep $DUMMY_LINE $BASHRC_ALT && exit 1 || echo "OK"
grep "alias co='code'" $BASHRC_ALT

# CASE: Only START_LINE exists
echo "CASE: Only START_LINE exists"
# Initialize
echo > $BASHRC_ALT
echo $START_LINE >> $BASHRC_ALT
echo $DUMMY_LINE >> $BASHRC_ALT
# Call
update_my_bash_alias $BASHRC_ALT
# Assert
grep "$DUMMY_LINE" $BASHRC_ALT
grep "alias co='code'" $BASHRC_ALT

# CASE: Only END_LINE exists
echo "CASE: Only END_LINE exists"
# Initialize
echo > $BASHRC_ALT
echo $DUMMY_LINE >> $BASHRC_ALT
echo $END_LINE >> $BASHRC_ALT
# Call
update_my_bash_alias $BASHRC_ALT
# Assert
grep "$DUMMY_LINE" $BASHRC_ALT
grep "alias co='code'" $BASHRC_ALT
