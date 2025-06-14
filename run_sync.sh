#!/bin/bash

export PATH=/usr/local/bin:/opt/homebrew/bin:/usr/bin:/bin:/usr/sbin:/sbin
eval $(ssh-agent -s)
ssh-add ~/.ssh/quartz_launchd

cd /Users/alexandret/my-quartz-obsidian-publisher
/usr/local/bin/npx quartz sync --no-pull

