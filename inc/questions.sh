#!/bin/bash

###################################
## Example step
###################################

## Text question
###################################

project_id=$(bashutilities_get_user_var "- What is the project ID ?" "default");
# Making sure the format is ok
project_id=$(bashutilities_string_to_slug ${project_id});
# Visual confirmation
echo "-> Chosen project ID : ${project_id}";

## Yes / No questions
###################################

# A Simple question
_example_question=$(bashutilities_get_yn "- Do you want the example question ?" 'y');

# Another question, only if the example was answered by yes, default to "no"
_sub_example_question='n';
if [[ "${_example_question}" == 'y' ]];then
    _sub_example_question=$(bashutilities_get_yn "- Do you want the sub-example question ?" 'y');
fi;
