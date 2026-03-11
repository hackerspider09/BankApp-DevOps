#!/bin/bash

if (nginx --version >/dev/null 2>&1 ); then
    echo "Docker is present"
else
    echo "Installing docker...."
fi