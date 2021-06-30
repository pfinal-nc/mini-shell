set -e

function floo()
{
    export DOCKER_HOST=tcp://127.0.0.1:2375
    echo "find docker containers:"
    docker ps | grep "$1"
    linenumber=`docker ps | grep "$1"  | wc -l | tr -d ' '`
    if [ "$linenumber" -eq "1" ]; then
        docker exec -it `docker ps | grep "$1" | awk '{print $1}'` /bin/bash
    fi
    unset DOCKER_HOST
}

floo