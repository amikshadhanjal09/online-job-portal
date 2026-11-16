@echo off
cd /d "%~dp0"
if not exist lib mkdir lib
if not exist lib\sqlite-jdbc.jar powershell -NoProfile -Command "Invoke-WebRequest 'https://repo.maven.apache.org/maven2/org/xerial/sqlite-jdbc/3.45.3.0/sqlite-jdbc-3.45.3.0.jar' -OutFile 'lib/sqlite-jdbc.jar'"
if not exist lib\slf4j-api.jar powershell -NoProfile -Command "Invoke-WebRequest 'https://repo.maven.apache.org/maven2/org/slf4j/slf4j-api/2.0.13/slf4j-api-2.0.13.jar' -OutFile 'lib/slf4j-api.jar'"
if not exist lib\slf4j-nop.jar powershell -NoProfile -Command "Invoke-WebRequest 'https://repo.maven.apache.org/maven2/org/slf4j/slf4j-nop/2.0.13/slf4j-nop-2.0.13.jar' -OutFile 'lib/slf4j-nop.jar'"
set CP=lib\sqlite-jdbc.jar;lib\slf4j-api.jar;lib\slf4j-nop.jar
javac -cp "%CP%" JobConnect.java
if errorlevel 1 (
  pause
  exit /b 1
)
java -cp ".;%CP%" JobConnect
pause
