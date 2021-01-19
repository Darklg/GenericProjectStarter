#!/bin/bash

cat <<TXT
###################################
## Example Step
###################################
TXT

# Examples of answers
if [[ "${_example_question}" == 'y' ]];then
    bashutilities_message '- The example question was answered by "yes"' 'success' 'nowarn';
fi;

if [[ "${_example_question}" == 'n' ]];then
    bashutilities_message 'The example question was answered by "no"' 'error';
fi;

# Retrieve a git repository and disable tracking
example_clone_and_kill_git https://github.com/Darklg/SassCSSCommon.git;

## Copy a file
###################################

generic_demo_file="${_CURRENTDIR}demo.txt";

# Copy a file from the starter
cp "${_SOURCEDIR}files/demo.txt" "${generic_demo_file}";

# Replace content in this file
bashutilities_sed "s/project_id/${project_id}/g" "${generic_demo_file}";
