#!/usr/bin/env bash

docker tag ghcr.io/addg0/devcontainer-nix:main ghcr.io/addg0/devcontainer-nix:latest
docker push ghcr.io/addg0/devcontainer-nix:latest