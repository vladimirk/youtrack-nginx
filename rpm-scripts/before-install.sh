echo Retrieving latest download link...
curl --output /tmp/youtrack.html https://www.jetbrains.com/youtrack/download/download_thanks.jsp

URL=`grep -oPe "(http://download.jetbrains.com/.*?)msi\""  /tmp/youtrack.html | grep -o ".*\."`jar

rm /tmp/youtrack.html

mkdir -p /usr/lib/youtrack/lib

echo Retrieving youtrack $URL...
curl -L --output /usr/lib/youtrack/lib/youtrack.jar $URL
