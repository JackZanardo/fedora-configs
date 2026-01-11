#!/bin/bash

dnf update -y

dnf install -y cargo zsh
dnf install -y git helix niri yazi

dnf install -y quickshell 

dnf install -y --nogpgcheck --repofrompath 'terra,https://repos.fyralabs.com/terra$releasever' terra-release

dnf install -y noctalia-shell
