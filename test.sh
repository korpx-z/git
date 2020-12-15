set -e

export ANSI_YELLOW="\e[1;33m"
export ANSI_GREEN="\e[32m"
export ANSI_RESET="\e[0m"

echo -e "\n $ANSI_YELLOW *** testing docker run - alpine *** $ANSI_RESET \n"

echo -e "$ANSI_YELLOW Display current directory: $ANSI_RESET"
docker volume create testgit
docker run -i --rm --name some_git --mount source=testgit,target=/git quay.io/ibmz/git:latest clone https://github.com/korpx-z/hello.git
docker run --rm -i -v=testgit:/tmp/myvolume quay.io/ibm/busybox:musl cat /tmp/myvolume/hello/hello.txt


echo -e "\n $ANSI_GREEN *** TEST COMPLETED SUCESSFULLY *** $ANSI_RESET \n"
