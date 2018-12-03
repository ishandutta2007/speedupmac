sudo kill -9 $(ps aux | grep 'chromedriver' | awk '{print $2}')
sudo kill -9 $(ps aux | grep 'Chrome' | awk '{print $2}')
echo 'Relaunching Chrome.'
bash progressbar.sh
open -a Google\ Chrome
open -a Google\ Chrome
