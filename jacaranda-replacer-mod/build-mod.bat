@echo off
set JAVA_HOME=C:\Program Files\Java\jdk-25
cd /d C:\Users\Ben\curseforge\jacaranda-replacer-mod
echo Building jacaranda-replacer mod...
gradlew.bat build --no-daemon
echo.
echo Build complete! Check build\libs\ for the JAR file.
pause
