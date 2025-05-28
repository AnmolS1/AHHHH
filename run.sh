#!/usr/bin/env sh

git pull

committer="session on $(date '+%b %d %Y at %I:%M:%S %p')"

java -Xmx4G @libraries/net/minecraftforge/forge/1.19.2-43.5.0/unix_args.txt "$@"

git add .
git commit -m "$committer"
git push