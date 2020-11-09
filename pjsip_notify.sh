#!/bin/bash

cd /etc/asterisk/
touch pjsip_notify_additional.conf
wget -O pjsip_notify_custom.conf https://raw.githubusercontent.com/asterisk/asterisk/master/configs/samples/pjsip_notify.conf.sample
sed -i 's/sip*/pjsip/' pjsip_notify.conf
chown asterisk:asterisk pjsip_notify*
asterisk -rx 'module reload res_pjsip_notify.so'
