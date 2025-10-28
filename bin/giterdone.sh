#!/bin/sh

# bulk git operations for my OSS and work projects:

case "$1" in
  branch)
    ops="branch"
    ;;
  status)
    ops="status"
    ;;
  *)
    ops="remote prune origin"
    ;;
esac

for r in .config/clojure oss/* oss/*/public workspace/*
do
  ( echo === $r === && cd $r && git pull -f && git $ops )
done
