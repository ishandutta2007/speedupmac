sudo kill -9 $(ps aux | grep 'chromedriver' | awk '{print $2}')
sudo kill -9 $(ps aux | grep 'Chrome' | awk '{print $2}')
sudo kill -9 $(ps aux | grep 'Brave Browser' | awk '{print $2}')

echo 'Relaunching Brave.'
bash progressbar.sh
open -a Brave\ Browser
open -a Brave\ Browser

