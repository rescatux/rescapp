#!/bin/bash

usage () {

cat << EOF
  usage: $0 plugin-name
  e.g. '$0 bootinfoscript' generates bootinfoscript local documentation files.

EOF

}

PLUGIN="$1"

if [ "$#" -ne 1 ]; then
    usage
fi

if [ ! -d "plugins/${PLUGIN}" ] ; then

  echo "The plugins/${PLUGIN} directory must exist!"
  echo "Aborting!"
  exit 1
fi

code="${PLUGIN}"

rescappversion="$(head -n 1 VERSION)"

if [ -e "plugins/${PLUGIN}/name" ] ; then
  name="$(head -n 1 plugins/${PLUGIN}/name)"
else
  name="No name"
fi

if [ -e "plugins/${PLUGIN}/description" ] ; then
  description="$(head -n 1 plugins/${PLUGIN}/description)"
else
  description="No description"
fi


( \
 cat plugins/templates/local_header.html \
  | sed 's~@NAME@~'"${name}"'~g' \
  | sed 's~@CODE@~'"${code}"'~g' \
  | sed 's~@DESCRIPTION@~'"${description}"'~g' \
  | sed 's~@RESCAPPVERSION@~'"${rescappversion}"'~g' \
  ; cat plugins/${PLUGIN}/local_doc.html \
  ; cat plugins/templates/local_footer.html \
  | sed 's~@NAME@~'"${name}"'~g' \
  | sed 's~@CODE@~'"${code}"'~g' \
  | sed 's~@DESCRIPTION@~'"${description}"'~g' \
  | sed 's~@RESCAPPVERSION@~'"${rescappversion}"'~g' \
) > plugins/${PLUGIN}/doc.html

