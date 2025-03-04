#!/usr/bin/env bash
devcontainer templates apply -t ghcr.io/addg0/devcontainer-nix/nix:1 --workspace-folder ../tmp  -a "$(cat ../tmp/args.json)"