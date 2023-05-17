#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Please provide a project name."
    exit 1
fi

project_name="$1"
path="/home/$USER/Documents/code/$project_name"

mkdir "$path"
cd "$path"
git clone "https://github.com/Angus1811/typescript-template.git"
echo "Created project: $project_name"
code "$path"
