#!/usr/bin/env bash

if [[ $# -eq 0 ]]; then
  echo "No module specified"
  exit 1
fi

module=$1
port=`cpan2port -f '#{port}' $module 2>/dev/null`
version=`cpan2port -f '#{version}' $module 2>/dev/null`

cat << EOF
Create and install $module port:

\`\`\`
cd ~/checkouts/portfiles
cpan2port -t $module
git add perl/$port/Portfile
git commit -m "Default cpan2port port for $module."
# Edit perl/$port/Portfile
portindex
port lint --nitpick $port
sudo port install $port
git add perl/$port/Portfile
git commit -m "$module $version port."
\`\`\`
EOF
