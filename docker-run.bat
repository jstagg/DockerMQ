echo off

set DATA="//D/DockerDataMounts/DockerMQ"

REM docker run --detach --hostname gitlab.homelan.lcl --publish 443:443 --publish 80:80 --publish 22:22 --name gitlab --volume %GITLAB_HOME%/config:/etc/gitlab --volume gitlab-logs:/var/log/gitlab --volume gitlab-data:/var/opt/gitlab gitlab/gitlab-ce:latest

REM docker network connect my-bridge-network gitlab

docker run -e LICENSE=accept --privileged --publish 9443:9443 -v %DATA%:/opt/ssfs/shared -it --name mqs ibmcom/mq

REM podman run -e LICENSE=accept --privileged -v <shared file system      directory path>:/opt/ssfs/shared -it --name <container name> <image>
