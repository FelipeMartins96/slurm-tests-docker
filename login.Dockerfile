FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y munge slurm-client mailutils \ 
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /var/spool/slurm \
    && chown -R slurm:slurm /var/spool

COPY slurm.conf /etc/slurm-llnl/
COPY --chown=munge:munge munge.key /etc/munge/munge.key