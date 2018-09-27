sudo kill $(ps aux -O started | grep 'chromedriver' | awk '{print $2}')
sudo kill $(ps aux -O started | grep 'Chrome' | awk '{print $2}')
sleep 30s
open -a Google\ Chrome
