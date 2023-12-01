wget https://s3.amazonaws.com/cfengine.packages/quick-install-cfengine-enterprise.sh
bash ./quick-install-cfengine-enterprise.sh hub
apt install autoconf automake make
cd /data/masterfiles
./autogen.sh
make install
export PATH=/var/cfengine/bin:$PATH
cf-agent -IB $(hostname -i)
cf-agent -KIf update.cf
cf-agent -KI
