ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
/etc/init.d/nginx restart

ln -sf /home/box/web/hello.py /etc/gunicorn.d/hello.py
/etc/init.d/gunicorn restart