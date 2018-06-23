FROM ubuntu:xenial-xenial-20180525

LABEL maintainer="Jörg Klems"

ENV GIT_PARAM='--depth 1' \
    GIT_SOURCE='https://github.com/jbeverly/pam_ssh_agent_auth.git' \
    GIT_PATH='pam_ssh_agent_auth' \
    DEPENDENCIES='git build-essential checkinstall libssl-dev libpam0g-dev debhelper dh-make'

RUN set -xe \    
    && apt-get update \
    && apt-get install -y ${DEPENDENCIES} 

VOLUME [ "/data" ]

CMD ["/bin/bash"]




