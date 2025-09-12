#!/bin/sh

for r in .config/clojure oss/* oss/*/public workspace/*
do
  ( echo === $r === && cd $r && git pull -f && git remote prune origin )
done
