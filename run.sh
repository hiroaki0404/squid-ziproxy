#!/bin/bash
/etc/init.d/ziproxy start
#/etc/init.d/squid start
/etc/init.d/squid-prefetch start
#/etc/init.d/squid stop
/usr/sbin/squid -N


