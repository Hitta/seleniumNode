#!/bin/bash
SELENIUMSERVER_BASEURL="http://selenium.googlecode.com/files/";
SELENIUMSERVER_NAME="selenium-server-standalone-2.41.0.jar";
CHROMEDRIVER_BASEURL="http://chromedriver.storage.googleapis.com/";
CHROMEDRIVER_VERSION="2.9/";
CHROMEDRIVER_NAME="chromedriver_mac32.zip";
if [ ! -f $SELENIUMSERVER_NAME ]; then
	curl -O $SELENIUMSERVER_BASEURL$SELENIUMSERVER_NAME;
fi
if [ ! -f $CHROMEDRIVER_VERSION$CHROMEDRIVER_NAME ]; then
	mkdir $CHROMEDRIVER_VERSION;
	cd $CHROMEDRIVER_VERSION;
	curl -O $CHROMEDRIVER_BASEURL$CHROMEDRIVER_VERSION$CHROMEDRIVER_NAME;
	unzip $CHROMEDRIVER_NAME;
	cd ..;
fi
java -jar $SELENIUMSERVER_NAME -role node -nodeConfig node-config.json -Dwebdriver.chrome.driver=$CHROMEDRIVER_VERSION"chromedriver"
