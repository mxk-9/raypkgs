#! /usr/bin/env bash

tag_name=$(date +%Y-%m-%d_%H-%M)

zip -r $tag_name.zip pkgs

# commiting and creating a tag, named '$tag_name'.
# After that, call

# curl -L \
#   -X POST \
#   -H "Accept: application/vnd.github+json" \
#   -H "X-GitHub-Api-Version: 2022-11-28" \
#    https://github.com/mxk-9/raypkgs/releases \
#    -d '{"tag_name":"v1.0.0","target_commitish":"master","name":"v1.0.0","body":"Description of the release","draft":false,"prerelease":false,"generate_release_notes":false}' \
#    -b name=raypm
