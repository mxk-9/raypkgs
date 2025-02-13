#! /usr/bin/env bash

dt=$(date +%Y-%m-%d_%H-%M)

zip -r $dt.zip pkgs
