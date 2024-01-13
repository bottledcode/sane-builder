FROM ghcr.io/actions/actions-runner:latest

USER root

RUN apt update && apt install -y git git-lfs

USER runner
