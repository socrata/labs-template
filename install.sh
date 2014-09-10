#!/bin/sh

echo "Copying in files we don't want to hyperlink..."
cp -n _template/_config.yml _template/search.json _template/related.json .

echo "Linking in template files..."
./_template/dircombine '.*' '(dircombine|install.sh|.git)' . _template

echo "Done!"
