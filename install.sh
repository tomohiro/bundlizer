#!/bin/sh

set -e

BUNDLIZER_ROOT="${HOME}/.bundlizer"
if [ $XDG_DATA_HOME ]; then
  BUNDLIZER_ROOT="${XDG_DATA_HOME}/bundlizer"
fi

echo 'Start install the Bundlizer...'
  git clone git://github.com/tomohiro/bundlizer.git "${BUNDLIZER_ROOT}"

echo
echo 'Finished. Please run this command.'
echo
echo "  \`echo 'source \"${BUNDLIZER_ROOT}/etc/bashrc\"' >> ~/.bash_profile\`"
