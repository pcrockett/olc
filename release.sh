#!/usr/bin/env bash
set -Eeuo pipefail

TAG_NAME="v$(./olc --version)"
git tag "${TAG_NAME}"
git push --tags
gh release create "${TAG_NAME}" --generate-notes --fail-on-no-commits ./olc
