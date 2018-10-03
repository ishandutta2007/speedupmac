sudo kill -9 $(ps aux | grep 'chromedriver' | awk '{print $2}')
sudo kill -9 $(ps aux | grep 'Chrome' | awk '{print $2}')
sleep 30s
open -a Google\ Chrome
