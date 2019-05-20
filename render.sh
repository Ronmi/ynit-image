#!/bin/bash

for TAG in latest oldstable stable testing jessie stretch buster
do
    mkdir $TAG
    sed "s/%tag%/$TAG/g" template > $TAG/Dockerfile
done
