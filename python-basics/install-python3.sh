yum update -y
yum install yum-utils
yum-builddep python -y
curl -O https://www.python.org/ftp/python/3.8.0/Python-3.8.0.tgz
mkdir -p /home/vagrant/usr/local
tar -zxvf Python-3.8.0.tgz
cd ./Python-3.8.0/
./configure
make altinstall prefix=/home/vagrant/usr/local exec-prefix=/home/vagrant/usr/local
echo "export PATH=\$HOME/usr/local/bin:\$PATH" >> /home/vagrant/.bashrc
source /home/vagrant/.bashrc
cd /home/vagrant/usr/local/bin/
ln -s ./python3.8 python3
