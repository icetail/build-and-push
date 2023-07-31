#!/bin/bash

versionapp=("2.0.2")
#versiondb=("0.0.2" "latest")

for version in "${versionapp[@]}"; do
  docker buildx build --platform linux/amd64,linux/arm/v7,linux/arm64 --build-arg VERSION="$version" --build-arg BUILD_DATE="$(TZ=CET date +'%Y-%m-%dT%H:%M:%S')" -t "icetail/actiontool:$version" --push /mnt/d/devschuur/Actiontool/App/.
done

#for version in "${versiondb[@]}"; do
#  docker buildx build --platform linux/amd64,linux/arm64 --build-arg VERSION="$version" --build-arg BUILD_DATE="$(TZ=CET date +'%Y-%m-%dT%H:%M:%S')" -t "icetail/actiontool-sql:$version" --push /mnt/d/devschuur/Actiontool/Database/.
#done
