FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y slurm-client \ 
    && rm -rf /var/lib/apt/lists/*