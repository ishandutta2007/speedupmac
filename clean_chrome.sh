sudo kill $(ps aux -O started | grep 'chromedriver' | awk '{print $2}')
sudo kill $(ps aux -O started | grep 'Chrome' | awk '{print $2}')
sleep 5s
open -a Google\ Chrome --args --disable-web-security

