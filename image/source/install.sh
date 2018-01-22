apt-get update
#apt-get upgrade -y
apt-get install -y build-essential libssl-dev libboost-all-dev git libjson-pp-perl
apt-get install -y software-properties-common
add-apt-repository ppa:bitcoin/bitcoin
apt-get update
apt-get install -y --allow-unauthenticated libdb4.8-dev libdb4.8++-dev
git clone https://github.com/SBDomains/unify-source.git
cd unify-source/src/
make -f makefile.unix
cp unifyd /bin/
cd ../..
rm -rf unify-source
