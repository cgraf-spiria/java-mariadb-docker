#!/bin/sh

echo "Compile..."
javac Mariadb.java

echo -n "Waiting mariadb:3306..."
while ! nc -z mariadb 3306; do
  echo -n "."
  sleep 1
done
echo ""
echo "OK !"


echo "Run..."
java -cp 'mariadb-java-client-3.0.7.jar:.' Mariadb