What?
=====
The script can be used to get the -approximate- page load time of a webpage that needs one be authenticated to view.

How Does it work?
=================
1. We get session cookies and use it in step 2.
2. Download the page whose load time we are interested in.
3. Use /usr/bin/time to calcualte the time the script ran. This should be proportional to the page load time.

Installation
------------
1. Dowload the source/clone the git repo.
2. Copy profile.cfg.sample to profile.cfg and add relevant details in the new config file.

Usage
-----
    /usr/bin/time --format="%e" ./get_page.sh
The output of the above command should be the approximate amount of time taken to download the page we are trying to profile.
