sudo kill $(ps aux -O started | grep 'iMovie' | awk '{print $2}')
sudo kill $(ps aux -O started | grep 'Mail' | awk '{print $2}')
sudo kill $(ps aux -O started | grep 'VLC' | awk '{print $2}')
sudo kill $(ps aux -O started | grep 'Visual Studio Code' | awk '{print $2}')

