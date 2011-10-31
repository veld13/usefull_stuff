svn checkout https://192.168.114.10:8443/svn/NOISETTE_CPP

sudo usermod -a -G svn veld
sudo usermod -a -G svn cherepock dualks ilya pavelb skorolev tata nikita 
sudo usermod -a -G svn cherepock 
sudo usermod -a -G svn dualks
sudo usermod -a -G svn ilya
sudo usermod -a -G svn nikita
sudo usermod -a -G svn pavelb
sudo usermod -a -G svn skorolev
sudo usermod -a -G svn tata

#================= SVN users setup ==========================
sudo usermod -a -G svn www-data
sudo mkdir /var/svn
sudo svnadmin create /var/svn
sudo chown -R www-data:svn /var/svn
sudo chmod -R g+ws /var/svn

sudo htpasswd -c -m /etc/apache2/svn.htpasswd veld
sudo nano /etc/apache2/conf.d/svn
ls -al  /etc/apache2/conf.d/
svnadmin create /home/veld/svn.local
sudo chown -R veld:svn /home/veld/svn.local
sudo chmod -R g+ws /home/veld/svn.local
emacs -nw /home/veld/svn.local/conf/svnserve.conf 
more /etc/apache2/svn.htpasswd
emacs -nw /home/veld/svn.local/conf/svnserve.conf 
sudo grep svn /etc/init.d/*
svnserve -d -r /home/veld/svn.local
svn info svn://localhost/test
svn info svn://localhost/
ping ko05
ping 192.168.114.5
svn info svn://192.168.114.5/

#================= SVN port ==============================
sudo svnadmin create /var/svn
sudo chown -R www-data:svn /var/svn
sudo chmod -R g+ws /var/svn
sudo htpasswd -c -m /etc/apache2/svn.htpasswd veld
sudo nano /etc/apache2/conf.d/svn
sudo /etc/init.d/apache2 restart

#emacs -nw /home/veld/svn.local/conf/svnserve.conf

svn info svn://localhost/
svn info svn://192.168.114.5/

mkdir /home/veld/noisette.port
svnadmin create /home/veld/noisette.port
echo '#!/bin/sh' > /home/veld/noisette.port/hooks/pre-revprop-change
chmod +x /home/veld/noisette.port/hooks/pre-revprop-change

svnsync init file:///home/veld/noisette.port/ https://192.168.114.10:8443/svn/NOISETTE_CPP
svnsync sync  file:///home/veld/noisette.port/
svnadmin dump  /home/veld/noisette.port > NOISETTE_CPP.ko10.dump
cd /var/svn
svnadmin create NOISETTE_CPP
svnadmin load NOISETTE_CPP < NOISETTE_CPP.ko10.dump

#================= SVN port (?) ==============================
cd Noisette/
mkdir /home/veld/noisette.port; svnadmin create /home/veld/noisette.port
echo '#!/bin/sh' > /home/veld/noisette.port/hooks/pre-revprop-change
chmod +x /home/veld/noisette.port/hooks/pre-revprop-change
cat /home/veld/.usefull 
svn lock -m "Repository locked due to SVN migration to ko05 server." https://192.168.114.10:8443/svn/NOISETTE_CPP
svnsync init file:///home/veld/noisette.port https://192.168.114.10:8443/svn
svnsync sync file://home/veld/noisette.port
svnsync info file://home/veld/noisette.port
svnsync info https://192.168.114.10:8443/svn
cd noisette.port/
find . -name "*" -type f -exec grep 192 '{}' ';' -print
find . -name ".*" -type f -exec grep 192 '{}' ';' -print
svnserve -d -r /home/veld/svn.local
svnadmin dump /home/veld/noisette.port/ > NOISETTE_CPP.upto104
#svnadmin dump -r0 /var/svn/NOISETTE_CPP | head -n 3 > ko05.NOISETTE_CPP.uuid
svnadmin load NOISETTE_CPP < NOISETTE_CPP.upto104
#svnadmin load NOISETTE_CPP < ko05.NOISETTE_CPP.uuid
svn switch --force --relocate https://192.168.114.10:8443/svn/NOISETTE_CPP http://ko05/svn/NOISETTE_CPP
#svn switch --relocate --force-uuid https://192.168.114.10:8443/svn http://ko05/svn
svn unlock -m "Repository locked due to SVN migration to ko05 server." .
svn co http://ko05/svn/NOISETTE_CPP



#========== trac ===========================
sudo mkdir /var/trac
sudo trac-admin /var/trac initenv
sudo chown -R www-data:svn /var/trac
sudo chmod -R g+ws /var/trac
sudo htpasswd -c -m /etc/apache2/trac.htpasswd veld
more /etc/apache2/conf.d/svn 
sudo nano /etc/apache2/conf.d/trac
sudo apt-get install python-setuptools
cd /usr/share/trac/plugins
which trac-admin 
ls -al /usr/bin/trac-admin
which tracd
ls /usr/share/
find -name "trac" /usr 
find /usr -name "trac"
ls /usr/lib/python2.6/dist-packages/trac
sudo apt-get install trac
sudo a2enmod mod_python
sudo apt-get install trac libapache2-svn subversion python-subversion libapache2-mod-python
sudo a2enmod mod_python
man a2enmod
ls /etc/apache2/mods-enabled
more /etc/apache2/mods-enabled/python.load
sudo a2enmod python
sudo /etc/init.d/apache2 restart 

sudo svn co http://svn.edgewall.org/repos/trac/sandbox/webadmin/
svn switch --help
svn switch http://svn.edgewall.org/repos/trac/plugins/0.10/webadmin
sudo svn switch http://svn.edgewall.org/repos/trac/plugins/0.10/webadmin
sudo easy_install-2.6 TracWebAdmin-0.1.2dev_r8925-py2.6.egg
sudo nano /etc/trac/trac.ini
sudo trac-admin /var/trac permission add veld TRAC_ADMIN
sudo /etc/init.d/apache2 restart
sudo groupadd svn
sudo apt-get install trac libapache2-svn python-subversion libapache2-mod-python
sudo usermod -a -G svn veld
sudo usermod -a -G svn cherepock 

sudo svnadmin create /var/svn
sudo chown -R www-data:svn /var/svn
sudo chmod -R g+ws /var/svn
sudo htpasswd -c -m /etc/apache2/svn.htpasswd veld
sudo nano /etc/apache2/conf.d/svn
sudo /etc/init.d/apache2 restart
 
#emacs -nw /home/veld/svn.local/conf/svnserve.conf 

svn info svn://localhost/
svn info svn://192.168.114.5/

mkdir /home/veld/noisette.port
svnadmin create /home/veld/noisette.port
echo '#!/bin/sh' > /home/veld/noisette.port/hooks/pre-revprop-change
chmod +x /home/veld/noisette.port/hooks/pre-revprop-change

svnsync init file:///home/veld/noisette.port/ https://192.168.114.10:8443/svn/NOISETTE_CPP
svnsync sync  file:///home/veld/noisette.port/
svnadmin dump  /home/veld/noisette.port > NOISETTE_CPP.ko10.dump
cd /var/svn
svnadmin create NOISETTE_CPP
svnadmin load NOISETTE_CPP < NOISETTE_CPP.ko10.dump
