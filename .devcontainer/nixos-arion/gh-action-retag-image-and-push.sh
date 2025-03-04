#!/usr/bin/env bash
# tag a source image into a multiple docker tag
# tags from GH action are separated by comma

echo "input tags: $1"

for t in ${1//,/ }
do
    tag=$(echo $t | xargs)
    if [[ -z "$tag" ]]; then continue; fi
    echo "processing tag: $tag"
    docker tag ghcr.io/addg0/devcontainer-nix:nixos-arion $tag
    docker push $tag
done
