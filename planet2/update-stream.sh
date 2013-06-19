#! /bin/sh

PLANET2=/srv/www/jogamp.org/planet2
cd $PLANET2

export JRE_HOME=/opt-linux-x86_64/jre7
# export JRE_HOME=$(readlink -f /usr/bin/java | sed "s:bin/java::")

$JRE_HOME/bin/java -jar HungryHarry-SNAPSHOT-jar-with-dependencies.jar $PLANET2/config/stream-config.xml

