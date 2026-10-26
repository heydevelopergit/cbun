#!/bin/bash
echo "This folders can created:"
echo "/var/lib/cbun"
echo "This repositories can cloned:"
echo "heydevelopergit/cbun.git"
echo "Press ENTER for start installation"
read
sudo mkdir /var/lib/cbun
git clone https://github.com/heydevelopergit/cbun.git
cd cbun
cp cbun /usr/bin/cbun
cp api /var/lib/cbun/api
chmod +x /var/lib/cbun/api
chmod +x /usr/bin/cbun
cd ..
rm -rf cbun
echo "Cinnamon Bun is installed!"
echo "Run with 'cbun' and api here: '/var/lib/cbun/api'"
echo "done"
exit 0

# CBun 1.0
