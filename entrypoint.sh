#!/usr/bin/env bash

set -eu

sed -i -re "s/^requirepass.*$/requirepass $REDIS_PASSWORD/" /usr/local/etc/redis/redis.conf

redis-server /usr/local/etc/redis/redis.conf
