#!/bin/bash

cat hosts2 >> hosts
awk '!a[$0]++' hosts > hosts-dedup
mv hosts-dedup hosts
rm hosts2
git status
git add .
git commit -m "Merged"
git push origin main
