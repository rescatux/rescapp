#!/bin/bash

cat << EOF > /etc/apt/sources.list.d/rescatux.list
deb http://rescatux.sourceforge.net/repo/ buster-dev main

EOF

apt -o Acquire::AllowInsecureRepositories=true \
-o Acquire::AllowDowngradeToInsecureRepositories=true \
update

DEBIAN_FRONTEND=noninteractive apt-get --yes --force-yes install rescapp
