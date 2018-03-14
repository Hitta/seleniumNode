#!/bin/bash
SELENIUMSERVER_BASEURL="http://selenium-release.storage.googleapis.com/3.9/";
SELENIUMSERVER_NAME="selenium-server-standalone-3.9.1.jar";
CHROMEDRIVER_BASEURL="http://chromedriver.storage.googleapis.com/";
CHROMEDRIVER_VERSION="2.36/";
CHROMEDRIVER_NAME="chromedriver_mac64.zip";
if [ ! -f $SELENIUMSERVER_NAME ]; then
	curl -O $SELENIUMSERVER_BASEURL$SELENIUMSERVER_NAME;
fi
if [ ! -f $CHROMEDRIVER_VERSION$CHROMEDRIVER_NAME ]; then
	mkdir $CHROMEDRIVER_VERSION;
	cd $CHROMEDRIVER_VERSION;
	curl -O $CHROMEDRIVER_BASEURL$CHROMEDRIVER_VERSION$CHROMEDRIVER_NAME;
	unzip $CHROMEDRIVER_NAME;
        cp chromedriver /usr/local/bin/
	cd ..;
fi
java -jar $SELENIUMSERVER_NAME -role node -nodeConfig node-config.json
