# raspico-more-dev
Raspberry Pi Pico More development environment

# はじめかた
docker-compose build
docker-compose up -d
docker exec -it raspico-more /bin/bash


# モジュール

cd ../xcx-example
npm run build
cp ./dist/xcratchExample.mjs ../docs/
https://jcodeorg.github.io/raspico-more-dev/xcratchExample.mjs