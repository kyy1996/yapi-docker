#!/bin/sh

service mongodb restart 

if [ -e "/my-yapi/init.lock" ]; then
  node /my-yapi/vendors/server/app.js
else
  yapi server
fi
