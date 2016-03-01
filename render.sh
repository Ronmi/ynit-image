#!/bin/bash

for TAG in latest old-stable stable testing wheezy jessie stretch
do
    mkdir $TAG
    sed "s/%tag%/$TAG/g" template > $TAG/Dockerfile
done
