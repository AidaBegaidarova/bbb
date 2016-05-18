ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
/etc/init.d/nginx restart

#ln -sf /home/box/web/hello.py /etc/gunicorn.d/hello.py
ln -sf /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/task_1_9_12
ln -sf /home/box/web/etc/gunicorn_ask.conf /etc/gunicorn.d/ask
/etc/init.d/gunicorn restart

/etc/init.d/mysql start
mysql -uroot -e "create database qa"