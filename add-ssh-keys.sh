#!/bin/bash 

if [ $(pidof ssh-agent) -gt 0 ]; then
    ssh-add $HOME/.ssh/github
else
    eval "$(ssh-agent -s)"
    ssh-add $HOME/.ssh/github
fi
