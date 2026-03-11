#!/bin/bash

# if (nginx --version >/dev/null 2>&1 ); then
#     echo "Docker is present"
# else
#     echo "Installing docker...."
# fi

# if docker info | grep -q "hackerspider09" || true; then
#     echo $?
#     echo "some"
# else
#     echo $?
#     echo "Sdf"
# fi

if [[ 1 -eq 1 ]]; then
echo "SDf"
fi

cd $HOME

            docker compose down || true
            
            docker compose up -d --pull always