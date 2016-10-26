#php ini_set('cgi.fix_pathinfo', '0')

sudo sed -i.bak s/cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/g /etc/php5/fpm/php.ini 
sudo rm /etc/nginx/sites-available/site.conf
sudo service nginx restart
sudo cp /vagrant/provision/server/php/nginx.conf /etc/nginx/sites-available/site.conf
sudo chmod 644 /etc/nginx/sites-available/site.conf
sudo ln -s /etc/nginx/sites-available/site.conf /etc/nginx/sites-enabled/site.conf
sudo service nginx restart