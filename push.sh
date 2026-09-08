#!/usr/bin/env bash
cd /home/ubuntu/Jellyfin-Universal-Catalogue/plugins || exit 1
if [[ -n $(git status --porcelain) ]]; then
    git add .
    git commit -m "Generated: $(date '+%Y-%m-%d %H:%M:%S')"
fi
git push origin main >> /home/ubuntu/autopush.log 2>&1
