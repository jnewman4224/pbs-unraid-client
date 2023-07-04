# Packing the PBS client for use by unraid server in a docker container

FROM debian:bookworm-slim

RUN apt-get update \
    && apt-get -y install \
      wget \
      vim \
    ; \
    wget https://enterprise.proxmox.com/debian/proxmox-release-bookworm.gpg -O /etc/apt/trusted.gpg.d/proxmox-release-bookworm.gpg \
    && echo "deb http://download.proxmox.com/debian/pbs-client bookworm main" >> /etc/apt/sources.list \
    && apt-get update \
    && apt-get -y install proxmox-backup-client