echo "***********************"
echo "Remove old Provisioning."
echo "***********************"

apt-get purge -y g++ git nodejs npm

apt-get update


echo "***********************"
echo "Begin Provisioning Node/Npm"
echo "***********************"

# curl -sL https://deb.nodesource.com/setup | sudo bash - #old version.
sudo apt-get install -y -qq curl && curl -sL https://deb.nodesource.com/setup_6.x | sudo bash -
sudo apt-get install -y nodejs

apt-get install -y -qq git g++

sudo npm install gulp-cli grunt-cli bower forever pm2 -g