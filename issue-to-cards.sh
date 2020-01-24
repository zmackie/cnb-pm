#! /usr/bin/env bash

set -x


hub issue --format '%U%n' | tail | xargs -L 1 -I _ xargs -L 1 -I _ jq -n --arg note _ -f note.jq | \
 http post https://api.github.com/projects/columns/7764197/cards \
 Accept:application/vnd.github.inertia-preview+json \
 Authorization:"token 2be8e15ee9b3adb53d80c2a59ead02defd96dbf1"
