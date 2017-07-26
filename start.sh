#!/bin/sh

killall -9 node

xfce4-terminal -e testrpc
while ! nc -z localhost 8545; do sleep 0.1; done # wait for testrpc to start

truffle migrate

yarn run start