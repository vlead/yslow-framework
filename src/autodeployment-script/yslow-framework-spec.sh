# /bin/bash
export http_proxy="http://proxy.iiit.ac.in:8080"
echo "Your proxy $http_proxy"
export https_proxy="https://proxy.iiit.ac.in:8080"
echo "Your https proxy is $https_proxy"
apt-get update
apt-get -y install php5 apache2
apt-get purge nodejs npm
apt-get install -y python-software-properties python g++ make software-properties-common
echo -ne '\n' | add-apt-repository ppa:chris-lea/node.js
apt-get -y update
apt-get install -y nodejs
#apt-get install -y npm
#apt-get upgrade -y npm nodejs
npm config set https-proxy http://proxy.iiit.ac.in:8080
npm config set proxy http://proxy.iiit.ac.in:8080
#apt-get install -y build-essential chrpath git-core libssl-dev libfontconfig1-dev libxft-dev
npm install phantomjs
cp node_modules/phantomjs/lib/phantom/bin/phantomjs /usr/bin
wget http://downloads.sourceforge.net/project/xampp/XAMPP%20Linux/1.8.3/xampp-linux-x64-1.8.3-4-installer.run
chmod +x xampp-linux-x64-1.8.3-4-installer.run
yes | ./xampp-linux-x64-1.8.3-4-installer.run
service apache2 stop
/opt/lampp/lampp start
git clone https://github.com/vlead/yslow-framework.git
chmod -R 775 yslow-framework/
cd yslow-framework/src/
cp htdocs/* /opt/lampp/htdocs
