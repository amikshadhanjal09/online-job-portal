#!/bin/bash
cd "$(dirname "$0")"
set -e
mkdir -p lib
fetch() { [ -f "$2" ] || curl -L --fail --show-error "$1" -o "$2"; }
fetch https://repo.maven.apache.org/maven2/org/xerial/sqlite-jdbc/3.45.3.0/sqlite-jdbc-3.45.3.0.jar lib/sqlite-jdbc.jar
fetch https://repo.maven.apache.org/maven2/org/slf4j/slf4j-api/2.0.13/slf4j-api-2.0.13.jar lib/slf4j-api.jar
fetch https://repo.maven.apache.org/maven2/org/slf4j/slf4j-nop/2.0.13/slf4j-nop-2.0.13.jar lib/slf4j-nop.jar
CP="lib/sqlite-jdbc.jar:lib/slf4j-api.jar:lib/slf4j-nop.jar"
javac -cp "$CP" JobConnect.java
java -cp ".:$CP" JobConnect
