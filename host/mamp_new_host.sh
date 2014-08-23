#!/bin/bash
 
if [ "$#" != "1" ]; then
  echo "1 parameter: site URL e.g. sub.site.loc"
  exit
else
  SITEVAR="$1"
 
  # Adding to server
  echo "" | sudo tee -a /etc/hosts
  echo "127.0.0.1       $SITEVAR" | sudo tee -a /etc/hosts
 
 
  echo "" >> /Applications/MAMP/conf/apache/extra/httpd-vhosts.conf
  echo "<VirtualHost *:80>" >> /Applications/MAMP/conf/apache/extra/httpd-vhosts.conf
  echo "    ServerAdmin vladimir@technocrat.com.au" >> /Applications/MAMP/conf/apache/extra/httpd-vhosts.conf
  echo "    DocumentRoot \"/Applications/MAMP/htdocs/_SITES/$SITEVAR\"" >> /Applications/MAMP/conf/apache/extra/httpd-vhosts.conf
  echo "    ServerName $SITEVAR" >> /Applications/MAMP/conf/apache/extra/httpd-vhosts.conf
  echo "    ServerAlias www.$SITEVAR" >> /Applications/MAMP/conf/apache/extra/httpd-vhosts.conf
  echo "    ErrorLog \"logs/$SITEVAR-error_log\"" >> /Applications/MAMP/conf/apache/extra/httpd-vhosts.conf
  echo "    CustomLog \"logs/$SITEVAR-access_log\" common" >> /Applications/MAMP/conf/apache/extra/httpd-vhosts.conf
  echo "</VirtualHost>" >> /Applications/MAMP/conf/apache/extra/httpd-vhosts.conf
fi