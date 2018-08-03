
#!/bin/bash
#
# Vagner A silva
#
# SPDX-License-Identifier: Apache-2.0
#
# Exit on first error
echo "#############################################################"
echo "#         Download node 9                                   #"
echo "#############################################################"
sleep 2
echo
echo

curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -
echo "#############################################################"
echo "#         Install node 9                                    #"
echo "#############################################################"
sudo apt-get install -y nodejs
echo "#############################################################"
echo "#         Install docker-compose                            #"
echo "#############################################################"
sudo apt-get install docker-compose
sleep 4
echo "#############################################################"
echo "#         Install APACHE2                                   #"
echo "#############################################################"

## INSTALAR APACHE 2 no UBUNTU
sudo apt-get update
sudo apt-get install -y apache2  
sudo a2enmod headers
sudo a2enmod proxy
sudo a2enmod proxy_http
sudo a2enmod ssl

echo "#############################################################"
echo "#         Clone ssl package                                 #"
echo "#############################################################"
sudo git clone https://github.com/letsencrypt/letsencrypt /opt/letsencrypt

echo "#############################################################"
echo "#         https://my.freenom.com/cart.php?a=complete        #"
echo "#         winechain.tk setting DNS IP in 20 seconds         #"
echo "#############################################################"
sleep20

./letsencrypt-auto --apache -d winechain.tk


# sudo ./iniciar.sh