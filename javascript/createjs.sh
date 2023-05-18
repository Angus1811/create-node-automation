#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Please provide a project name."
    exit 1
fi

project_name="$1"
path="/home/$USER/Documents/code/$project_name"

path="/home/$USER/Documents/code/$project_name"

echo "checking files"


#check if directory exists
if [ -d "/home/$USER/Documents" ]; then
    if [ -d "/home/$USER/Documents/code" ]; then
        if [ -d "$path" ]; then
            echo "project already exists (please select a diffrent name)"
            exit 1
        else
            continue
        fi
    else
        mkdir "/home/$USER/Documents/code"
    fi
else
    mkdir "/home/$USER/Documents"
fi

mkdir "$path"
cd "$path"
git clone "https://github.com/Angus1811/node-template.git"
echo "Created project: $project_name"
code "$path"
