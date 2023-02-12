#!/bin/bash
path=/etc/apache2/apache2.conf
cp $path /home/
echo 'ServerTokens Prod' >> $path
echo 'TraceEnable off' >> $path
echo 'ServerSignature off' >> $path
sed -i 's@^\(Timeout\) 300@\1 60@g' $path >> $path
service apache2 restart
