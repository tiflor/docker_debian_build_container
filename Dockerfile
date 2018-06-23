FROM ubuntu:xenial-20180525

LABEL maintainer="Jörg Klems"

ENV DEPENDENCIES='git build-essential checkinstall libssl-dev libpam0g-dev debhelper dh-make'

RUN set -xe \    
    && apt-get update \
    && apt-get install -y ${DEPENDENCIES} 

VOLUME [ "/data" ]

CMD ["/bin/bash"]




