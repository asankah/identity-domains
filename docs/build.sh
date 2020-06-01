#!/bin/sh
echo  ==============================================================================
echo  :: Cayman Theme :: updating website.
pandoc  --no-highlight \
        --lua-filter=task-list.lua \
        --from       markdown_github+smart+yaml_metadata_block+auto_identifiers \
        --to         html5 \
        --template   ../../asankah.github.io/docs/article.template \
        --output     ./index.html \
        ../README.md ./configuration.yaml
cp ../../asankah.github.io/stylesheets/article.css ./stylesheets/article.css
