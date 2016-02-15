# CMS-Make

A Docker environment aimed to create a simpler way to use the integrated tool **cmsMake**, mainly intended for task creators.

## Requisites

Before start, check that you have installed the following element(s):

[![Click here to download Docker](https://www.docker.com/sites/all/themes/docker/assets/images/logo.png "Click here to download Docker")](https://docs.docker.com/engine/installation/)

## Building and Running

**WARNING**: If you're running Windows or Mac OS X, the following commands should be typed into "Docker Quickstart Terminal".

After successfully installed Docker, you may now download the installation script somewhere and execute it by typing

```sh
$ curl -O -sS https://raw.githubusercontent.com/toctou/cmsmake/master/scripts/install.sh
$ chmod +x install.sh
$ ./install.sh
```

Once installation terminates, installation file will delete itself, and you are ready to build the `cms` environment by typing

```sh
$ cmsMakeBuild
```

**WARNING**: It may take a long time to complete (~30 mins).

After all that, the cms environment is ready.
Place yourself in the folder of interest, which contains the tasks you want to work with (e.g. `/home/ioi/problems/`) and you can now finally enter the environment with the command

```sh
$ cmsMakeStart
```

If all worked correctly, it should appear a simple prompt `/tasks $` which points to the host folder. Verify that by typing `ls`.

From that prompt you can `cd` to a specific task folder and then launch the `cmsMake` command and all its arguments.
