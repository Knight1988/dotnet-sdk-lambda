#!/bin/sh

docker build -t knight1988/dotnet-sdk-lambda:6.0 -t knight1988/node-serverless:latest . && \
docker push knight1988/dotnet-sdk-lambda:6.0 && \
docker push knight1988/dotnet-sdk-lambda:latest
