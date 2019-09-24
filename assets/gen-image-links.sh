#!/bin/sh

set -e

post_name=$(basename $(pwd))

for f in $(cd orig; echo *); do
    if [ -e small/$f ]; then
        echo "[![FIXME: alt text](/skywave/assets/$post_name/small/$f)](/skywave/assets/$post_name/orig/$f)"
    else
        echo "![FIXME: alt text](/skywave/assets/$post_name/orig/$f)"
    fi
    echo
done
