#!/bin/bash

###################################
## Functions
###################################

function example_clone_and_kill_git(){
    git clone "$1";
    local _gitdir="$(basename "$1" .git)";
    if [[ "${_gitdir}" == '' ]];then
        return;
    fi;
    rm -rf "${_gitdir}/.git";
}
