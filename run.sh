#!/bin/bash
COUNTER=0
while [  $COUNTER -lt 100 ]; do
    docker run howlplay-stress-test-suite
    let COUNTER=COUNTER+1
done