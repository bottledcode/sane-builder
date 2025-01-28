FROM ghcr.io/actions/actions-runner:latest

USER root

RUN apt update && apt install -y git git-lfs jq curl build-essential wget

ENV UPX_VERSION=4.2.4

ADD https://github.com/upx/upx/releases/download/v$UPX_VERSION/upx-${UPX_VERSION}-amd64_linux.tar.xz upx.tar.xz
RUN tar -xvf upx.tar.xz && mv upx-*/upx /usr/local/bin/upx && rm -rf upx.tar.xz

USER runner
