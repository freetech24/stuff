#!/bin/bash
# скрипт на добавление ssh ключа пользоватея test

echo "\r\r\r\r\r" | adduser --quiet --disabled-password test
 
mkdir /home/test/.ssh
 
touch /home/test/.ssh/authorized_keys
 
chown -R test:test /home/test/.ssh
 
chmod 700 /home/test/.ssh
 
chmod 600 /home/test/.ssh/authorized_keys

echo 'ssh-rsa SSH PUBLIC KEY== test'>> /home/test/.ssh/authorized_keys

usermod -a -G sudo test


