#!/bin/bash


declare -A description
# I only declare whatever I want to make public
description["jessie-dev"]="Debian Jessie 8"
description["stretch-dev"]="Debian Stretch 9"
description["buster-dev"]="Debian Buster 10"
description["xenial-dev"]="Ubuntu Xenial 16.04"
description["artful-dev"]="Ubuntu Artful 17.10"

README_HTML_FILE="README.html"

function generate_top_instructions () {


cat << EOF
<b>If you are using a non-free Debian live cd you might want to check <a href="README.non-free.html">README.non-free.html</a> instead.</b>
<hr/>

<pre>
EOF
}

function generate_bottom_instructions () {


cat << EOF
</pre>
EOF
}


function generate_inner_instructions () {

	nsection="${1}"
	narch="${2}"
    ndistro="${3}"
if echo ${nsection} | grep 'live-boot' > /dev/null 2>&1 ; then
	return 0
fi
	
	if [ "${description[$nsection]}x" != "x" ] ; then
cat << EOF
# ------------------------------------------------------------
# ${description[$nsection]} (${narch}) - Instructions - BEGIN
EOF

if [ "${ndistro}" = "ubuntu" ] ; then
    generate_ubuntu_extra_instructions
fi

cat << EOF
# Create this file:
# /etc/apt/sources.list.d/rescatux.list
# with this content:


deb http://rescatux.sourceforge.net/repo/ ${nsection} main

# Till everything is signed you need this workaround:

sudo apt -o Acquire::AllowInsecureRepositories=true \\
-o Acquire::AllowDowngradeToInsecureRepositories=true \\
update

# Finally you can install rescapp:

apt-get install rescapp

# Just say yes when they tell you the package cannot be authenticated
# Ignore lilo warning when installing rescapp (just press enter)

EOF


# Might be useful for extra bottom instructions function in the future

cat << EOF


# ${description[$nsection]} (${narch}) - Instructions - END
# ------------------------------------------------------------



EOF
	fi

}

function generate_ubuntu_extra_instructions () {

cat << EOF

# First of all
# Add universe to your sources.list
# if it's not there

EOF

}



### MAIN SCRIPT BEGIN

generate_top_instructions > ${README_HTML_FILE}


ndistro="debian"
# Debian - i386
for narch in i386 ; do

  for nsection in buster buster-dev buster-live-boot buster-live-boot-dev stretch stretch-dev jessie jessie-dev   ; do
    if [ ! -d "dists/${nsection}/main/binary-${narch}/" ] ; then
        mkdir -p "dists/${nsection}/main/binary-${narch}/"
    fi
    apt-ftparchive packages ${nsection} | gzip -c > dists/${nsection}/main/binary-${narch}/Packages.gz
    apt-ftparchive sources ${nsection} | gzip -c > dists/${nsection}/main/binary-${narch}/Sources.gz
    apt-ftparchive packages ${nsection} > dists/${nsection}/main/binary-${narch}/Packages
    apt-ftparchive sources ${nsection} > dists/${nsection}/main/binary-${narch}/Sources
    generate_inner_instructions ${nsection} ${narch} ${ndistro} >> ${README_HTML_FILE}
  
  done

done

ndistro="debian"
# Debian - amd64
for narch in amd64 ; do

  for nsection in buster buster-dev buster-live-boot buster-live-boot-dev stretch stretch-dev jessie jessie-dev ; do
    if [ ! -d "dists/${nsection}/main/binary-${narch}/" ] ; then
        mkdir -p "dists/${nsection}/main/binary-${narch}/"
    fi  
    apt-ftparchive packages ${nsection} | gzip -c > dists/${nsection}/main/binary-${narch}/Packages.gz
    apt-ftparchive sources ${nsection} | gzip -c > dists/${nsection}/main/binary-${narch}/Sources.gz
    apt-ftparchive packages ${nsection} > dists/${nsection}/main/binary-${narch}/Packages
    apt-ftparchive sources ${nsection} > dists/${nsection}/main/binary-${narch}/Sources
    generate_inner_instructions ${nsection} ${narch} ${ndistro} >> ${README_HTML_FILE}
  
  done

done

ndistro="ubuntu"
# Ubuntu
for narch in amd64 ; do

  for nsection in xenial xenial-dev artful artful-dev ; do
    if [ ! -d "dists/${nsection}/main/binary-${narch}/" ] ; then
        mkdir -p "dists/${nsection}/main/binary-${narch}/"
    fi
    apt-ftparchive packages ${nsection} | gzip -c > dists/${nsection}/main/binary-${narch}/Packages.gz
    apt-ftparchive sources ${nsection} | gzip -c > dists/${nsection}/main/binary-${narch}/Sources.gz
    apt-ftparchive packages ${nsection} > dists/${nsection}/main/binary-${narch}/Packages
    apt-ftparchive sources ${nsection} > dists/${nsection}/main/binary-${narch}/Sources
    generate_inner_instructions ${nsection} ${narch} ${ndistro} >> ${README_HTML_FILE}
  
  done

done


generate_bottom_instructions >> ${README_HTML_FILE}

