#!/bin/bash
VER=$1
FULL_VER=$VER.0
curl -O https://www.python.org/ftp/python/$FULL_VER/Python-$FULL_VER.tgz
mkdir -p $HOME/usr/local
export PATH=$HOME/usr/local/bin:$PATH
tar -zxvf $HOME/Python-$FULL_VER.tgz
cd $HOME/Python-$FULL_VER
./configure
make altinstall prefix=$HOME/usr/local exec-prefix=$HOME/usr/local
cd $HOME/usr/local/bin/
ln -s ./python$VER python3
echo "export PATH=\$HOME/usr/local/bin:\$PATH" >> $HOME/.bashrc
