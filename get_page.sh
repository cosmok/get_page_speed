#!/bin/bash
source profile.cfg
wget --save-cookies cookies.txt --keep-session-cookies \
                        --post-data "username=$username&password=$password" \
                        "$auth_uri" -O /dev/null >/dev/null 2>&1 
if [ $? -eq 0 ]
then
# Now grab the page to be profiled
wget --load-cookies cookies.txt \
    --server-response -p "$profile_uri" -O /dev/null >/dev/null 2>&1 
fi
