FROM debian:stretch-slim
LABEL maintainer="Martin Smola"

ENV DEBIAN_FRONTEND noninteractive

# Install dependencies.
RUN apt-get update \
    && apt-get -y --no-install-recommends full-upgrade \
    && apt-get -y autoremove \
    && apt -f -y install
    && rm -rf /var/lib/apt/lists/* \
    && rm -Rf /usr/share/doc && rm -Rf /usr/share/man \
    && apt-get clean

VOLUME ["/sys/fs/cgroup"]
CMD ["/lib/systemd/systemd"]
