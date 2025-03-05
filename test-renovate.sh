#!/usr/bin/env bash
set -euo pipefail

# Validate renovate config
echo "Validating renovate config..."
renovate-config-validator

# Run renovate in dry-run mode
echo "Running renovate in dry-run mode..."
export RENOVATE_TOKEN="${GITHUB_TOKEN:-}"
export LOG_LEVEL="debug"

renovate \
    --platform=github \
    --dry-run=full \
    --print-config=true \
    addg0/devcontainer-nix 