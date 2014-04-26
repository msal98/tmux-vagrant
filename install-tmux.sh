#!/usr/bin/env bash

DONEFILE=/var/vagrant-tmux

# make sure we are idempotent
if [ -f "${DONEFILE}" ]; then
    exit 0
fi

# Actual shell commands here.
echo "Installing tmux..."
aptitude install tmux

# signal a successful provision
touch ${DONEFILE}
