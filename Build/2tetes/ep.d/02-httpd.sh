#!/bin/bash
echo "Params de HTTPD"

echo "
[program:httpd]
command=/usr/sbin/httpd -D FOREGROUND
" > /etc/supervisord.d/httpd.ini