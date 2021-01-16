#!/bin/bash

cat <<TXT
###################################
## Example Step
###################################
TXT


if [[ "${_example_question}" == 'y' ]];then
    bashutilities_message '- The example question was answered by "yes"' 'success' 'nowarn';
fi;


if [[ "${_example_question}" == 'n' ]];then
    bashutilities_message 'The example question was answered by "no"' 'error';
fi;
