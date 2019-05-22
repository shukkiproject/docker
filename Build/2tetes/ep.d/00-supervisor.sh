#!/bin/bash
echo "configuration de supervisor"


# Préparation Supervisord
mkdir -p /etc/supervisord.d

echo "
[supervisord]
user=root
pidfile=/var/run/supervisord.pid
logfile=/var/log/supervisord.log
loglevel=info
nodaemon=true

[include]
files = /etc/supervisord.d/*.ini
" > /etc/supervisord.conf