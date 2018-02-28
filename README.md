# howlplay-stress-test-suite
Stress testing suite for HowlPlay

## Build
Simply run `docker build` to build the image.
```
$ docker build -t howlplay-stress-test-suite .
```

## Run
You can run multiple containers at the same time, each container represents a client.

This file can be found at `run.sh`, which will spawn 100 containers.
```bash
#!/bin/bash 
COUNTER=0
while [  $COUNTER -lt 100 ]; do
    docker run howlplay-stress-test-suite
    let COUNTER=COUNTER+1 
done
```