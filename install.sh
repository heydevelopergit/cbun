#!/bin/bash
main() {
if [ ! $(id -u) = "0" ]; then
normal
else
root
fi
}
root() {
echo "! RUN WITH ROOT IS RISKY !"
echo "This folders can created:"
echo "/var/lib/cbun"
echo "This repositories can cloned:"
echo "heydevelopergit/cbun.git"
echo "Press ENTER for start installation"
read
sudo mkdir /var/lib/cbun
git clone https://github.com/heydevelopergit/cbun.git
cd cbun
cp cbun /usr/bin/
cp api /var/lib/cbun/
chmod +x /var/lib/cbun/api
chmod +x /usr/bin/cbun
cd ..
rm -rf cbun
echo "Cinnamon Bun is installed!"
echo "Run with 'cbun' and api here: '/var/lib/cbun/api'"
echo "done"
exit 0
}

normal() {
echo "This folders can created:"
echo "~/.cbun"
echo "~/.cbun/bin"
echo "This repositories can cloned:"
echo "heydevelopergit/cbun.git"
echo "Press ENTER for start installation"
read
mkdir -p ~/.cbun/bin
git clone https://github.com/heydevelopergit/cbun.git
cd cbun
cp cbun ~/.cbun/bin/
cp api ~/.cbun/
chmod +x ~/.cbun/*
cd ..
rm -rf cbun
echo "Cinnamon Bun is installed!"
echo "Run with '~/.cbun/bin/cbun' and api here: '~/.cbun/api'"
echo "Next step: add to $PATH: : to end and after your : on end add ~/.cbun/bin"
echo "done"
exit 0
}
main

# CBun 1.3
