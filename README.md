## docker-git-alpine

**Build Source**
[github](https://github.com/korpx-z/git)
-	[`latest`](https://github.com/korpx-z/git)  [![Build Status](https://travis-ci.com/korpx-z/git.svg?branch=master)](https://travis-ci.com/github/korpx-z/git)

A useful simple git container running in alpine Linux. <br />
_Derived from [alpine-docker/git](https://github.com/alpine-docker/git)_<br />
[![DockerHub Badge](http://dockeri.co/image/alpine/git)](https://hub.docker.com/r/alpine/git/)

### usage
**Bind mounts are not currently allowed on ZCX for security purposes.. please use docker volumes instead.**
```
docker volume create <docker_volume>
docker run -i --mount source=<docker_volume>,target=/git quay.io/ibmz/git:latest <git_command>
```
For example, if you need clone this repository, you can run
```
docker run -ti --rm -v ${HOME}:/root -v $(pwd):/git alpine/git clone https://github.com/korpx-z/git.git
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
