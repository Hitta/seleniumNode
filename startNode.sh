#!/bin/bash
SELENIUMSERVER_BASEURL="http://selenium.googlecode.com/files/";
SELENIUMSERVER_NAME="selenium-server-standalone-2.37.0.jar";
CHROMEDRIVER_BASEURL="http://chromedriver.storage.googleapis.com/";
CHROMEDRIVER_VERSION="2.4/";
CHROMEDRIVER_NAME="chromedriver_mac32.zip";
curl -O $SELENIUMSERVER_BASEURL$SELENIUMSERVER_NAME;
mkdir $CHROMEDRIVER_VERSION;
cd $CHROMEDRIVER_VERSION;
curl -O $CHROMEDRIVER_BASEURL$CHROMEDRIVER_VERSION$CHROMEDRIVER_NAME;
unzip $CHROMEDRIVER_NAME;
cd ..;
java -jar $SELENIUMSERVER_NAME -role node -nodeConfig node-config.json -Dwebdriver.chrome.driver=$CHROMEDRIVER_VERSIONchromedriver
