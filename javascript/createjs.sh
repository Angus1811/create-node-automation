#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Please provide a project name."
    exit 1
fi

project_name="$1"
path="/home/$USER/Documents/code/$project_name"

echo "checking files"


#-p is used so that we dont have to do any checks for if the dircotry exists (instead it will create all the directorys required)

mkdir "$path" -p
cd "$path"

git clone "https://github.com/Angus1811/node-template.git"

echo "Created project: $project_name"
code "$path"
