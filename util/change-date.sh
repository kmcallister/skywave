#!/bin/sh

set -e

old_date=$1
new_date=$2

if [ -z "$old_date" ] || [ -z "$new_date" ]; then
    echo "Usage: $0 old_date new_date" >&2
    exit 1
fi

subst="s/${old_date}/${new_date}/g"

for old in $(ls -d _posts/${old_date}* assets/${old_date}*); do
    new=$(echo "$old" | sed "$subst")
    git mv "$old" "$new"
    if echo "$new" | grep -q '\.markdown$'; then
        sed -i "$subst" "$new"
        git add "$new"
    fi
done
