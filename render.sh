#!/bin/bash

for TAG in latest oldstable stable testing wheezy jessie stretch
do
    mkdir $TAG
    sed "s/%tag%/$TAG/g" template > $TAG/Dockerfile
done
