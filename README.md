### This image is built to run on s390x architecture.
-    [build source](https://github.com/korpx-z/git)
-    [original source code](https://github.com/alpine-docker/git)

### Versions
Will always be the latest version available via the alpine `apk` package manager (s390x).

#git
A useful simple git container running in alpine Linux. <br />

### Using this image
**Bind mounts are not currently allowed on ZCX for security purposes.. please use docker volumes instead.**
```
docker volume create <docker_volume>
docker run -i --mount source=<docker_volume>,target=/git quay.io/ibm/git:latest <git_command>
```
For example, if you need clone this repository, you can run
```
docker run -ti --rm -v ${HOME}:/root -v <docker_volume>:/git quay.io/ibm/git:latest clone https://github.com/korpx-z/git.git
```
### Optional usage 1:

To save your type, add this fuction to `~/.bashrc` or `~/.profile`
    
    $ cat ~/.profile
    
    ...
    
    function git () {
        (docker run -ti --rm -v <docker_volume>:/root -v <docker_volume>:/git "$@")
    }
    
    ...
    
    $ source ~/.profile

for example, if you need clone this repository, with the function you just set, you can run it as local command

    git clone https://github.com/korpx-z/git.git

    
### The Protocols

Supports git, http/https and ssh protocols.

###License
**Apache License 2.0**

_A permissive license whose main conditions require preservation of copyright and license notices. Contributors provide an express grant of patent rights. Licensed works, modifications, and larger works may be distributed under different terms and without source code._
