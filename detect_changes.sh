#!/bin/bash

git diff HEAD origin/master --name-only |  awk 'BEGIN {FS = "/"}; {print $1 "/" $2 "/" $3}' | uniq | grep -v \/\/
