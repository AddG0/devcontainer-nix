#!/usr/bin/env nix-shell
#!nix-shell -i bash -p yq jq

arion_tag=$(arion config | yq ".services.devcontainer.image" -r)

echo "tagging arion image: $arion_tag"

docker tag $arion_tag ghcr.io/addg0/devcontainer-nix:nixos-arion