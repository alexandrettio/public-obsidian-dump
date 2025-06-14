#!/bin/bash

export PATH=/usr/local/bin:/opt/homebrew/bin:/usr/bin:/bin:/usr/sbin:/sbin
export GIT_SSH_COMMAND="ssh -i ~/.ssh/quartz_launchd -o IdentitiesOnly=yes"

cd /Users/alexandret/my-quartz-obsidian-publisher
/usr/local/bin/npx quartz sync --no-pull

