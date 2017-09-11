#!/usr/bin/env bash

#echo on
set -x

docker build -t microsoft/dotnet:2.0.0-sdk-ubuntu-1604 .
