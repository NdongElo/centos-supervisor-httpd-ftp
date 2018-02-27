#!/bin/bash

if [ -z "${USER}" ]
then
echo "Supervisor user is default (Aurelio)"
else
sed -ri "s/aurelio/${USER}/g" /etc/supervisord.conf
fi


if [ -z "${PASSWORD}" ]
then
echo "Supervisor password is default (admin)"
else
sed -ri "s/admin/${PASSWORD}/g" /etc/supervisord.conf
fi
