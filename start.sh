#!/bin/bash

cat <<TXT
###################################
## Generic Project Starter v 0.1.0
###################################
TXT

# This var refers to this file's dir
_SOURCEDIR="$( dirname "${BASH_SOURCE[0]}" )/";

# This function allows local var
function GenericProjectStarter(){

    ###################################
    ## Loading utilities
    ###################################

    # Global utilities
    . "${_SOURCEDIR}inc/BashUtilities/bashutilities.sh";

    # Project utilities
    . "${_SOURCEDIR}inc/functions.sh";

    ###################################
    ## Ask questions
    ###################################

    . "${_SOURCEDIR}inc/questions.sh";

    ###################################
    ## Call all steps
    ###################################

    # Question
    _start_install=$(bashutilities_get_yn "- Init project ?" 'y');
    if [[ "${_start_install}" == 'y' ]];then

        # Call all steps
        . "${_SOURCEDIR}inc/steps/example-step.sh";

        # Bye
        bashutilities_message '- The project is installed !' 'success';
    fi;

    ###################################
    ## Clean
    ###################################

    # Remove functions
    . "${_SOURCEDIR}inc/BashUtilities/modules/stop.sh";

}

# Launch script
GenericProjectStarter;
