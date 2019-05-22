#!/bin/bash

echo "Params de SSH"

# ssh keys (/usr/bin/ssh-keygen)
ssh-keygen -A

# passwd for root 
# default password = secret 
# we can change password immediately
echo root:${SSHD_ROOT_PASSWORD:-secret} | chpasswd

# can we connect by root? 
# replace string /regex/ 
# replace prohibit-password by yes and remove the #
# sed -e '/^#PermitRootLogin/s,prohibit-password,yes' -e '/^#PermitRootLogin/s,^#,,' -i /etc/ssh/sshd_config

# a\ append PermitRootLogin yes the line after #PermitRootLogin
# -i modify the file
sed -i -e '/^#PermitRootLogin/a\
PermitRootLogin yes' /etc/ssh/sshd_config

echo "
[program:sshd]
command=/usr/sbin/sshd -D
" > /etc/supervisord.d/sshd.ini