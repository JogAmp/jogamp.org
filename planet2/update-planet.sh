#! /bin/sh

PLANET2=/srv/www/jogamp.org/planet2
cd $PLANET2

export JAVA_HOME=$(readlink -f /usr/bin/javac | sed "s:bin/javac::")

$JAVA_HOME/bin/java -jar HungryHarry-SNAPSHOT-jar-with-dependencies.jar $PLANET2/config/planet-config.xml

