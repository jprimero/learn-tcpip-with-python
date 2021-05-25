VAGRANTHOME=/home/vagrant
yum update -y
yum install yum-utils
yum-builddep python -y
curl -O https://www.python.org/ftp/python/3.7.0/Python-3.7.0.tgz
mkdir -p $VAGRANTHOME/usr/local
tar -zxvf $VAGRANTHOME/Python-3.7.0.tgz
cd $VAGRANTHOME/Python-3.7.0/
./configure
make altinstall prefix=$VAGRANTHOME/usr/local exec-prefix=$VAGRANTHOME/usr/local
echo "export PATH=\$HOME/usr/local/bin:\$PATH" >> $VAGRANTHOME/.bashrc
cd $VAGRANTHOME/usr/local/bin/
ln -s ./python3.7 python3
