#!/bin/bash
cur_dir=$(dirname $0)
source "$cur_dir/profile.cfg"
wget --save-cookies "$cur_dir/cookies.txt" --keep-session-cookies \
                        --post-data "username=$username&password=$password" \
                        "$auth_uri" -O /dev/null >/dev/null 2>&1 
if [ $? -eq 0 ]
then
# Now grab the page to be profiled
wget --load-cookies "$cur_dir/cookies.txt" \
    --server-response -p "$profile_uri" -O /dev/null >/dev/null 2>&1 
fi
