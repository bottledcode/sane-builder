FROM ghcr.io/actions/actions-runner:latest

USER root

RUN apt update && apt install -y git git-lfs jq curl build-essential wget

ADD https://github.com/upx/upx/releases/download/v4.2.2/upx-4.2.2-amd64_linux.tar.xz upx.tar.xz
RUN tar -xvf upx.tar.xz && mv upx-*/upx /usr/local/bin/upx && rm -rf upx.tar.xz

USER runner
