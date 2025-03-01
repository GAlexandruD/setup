#!/bin/bash
set -euo pipefail
if command -v bash >/dev/null; then
  sudo chsh -s $(command -v zsh) $USER
fi
if ! command -v chezmoi >/dev/null; then
  sh -c "$(curl -fsLS get.chezmoi.io)" -- apply --source $PWD
fi

exit 0
