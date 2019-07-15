#!/bin/sh

jq "$(citron -e "Reflect version split: '-', head split: '.', imap: \\:i:x '.version[\${{i}}\$]=\$\$x', join: '|'")|.version[4]+=1 | .version[5]=\"$(git rev-parse --verify HEAD)\"" citron_standard_library.version -c > out
mv out citron_standard_library.version
git add citron_standard_library.version
git commit
