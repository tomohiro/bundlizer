#!/bin/sh

set -e


echo 'Start install the Bundlizer...'
git clone git://github.com/Tomohiro/bundlizer.git $HOME/.bundlizer

echo
echo 'Finished. Please run this command.'
echo
echo "  \`echo 'source \"\$HOME/.bundlizer/etc/bashrc\"' >> ~/.bash_profile\`"
