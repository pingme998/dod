curl 'https://raw.githubusercontent.com/pingme998/dod/main/iamblind' >nginx.conf
cat /etc/nginx/nginx.conf | sed "s|THEPORTNUMBER|$(cat PORT)|g"
nginx && aria2c --enable-rpc --rpc-listen-all
