# raspico-more-dev
Raspberry Pi Pico More development environment

# はじめかた
docker-compose build
docker-compose up -d
docker exec -it raspico-more /bin/bash


# モジュール
cd ../raspico-more-ext
npm install
npm install minilog
npm run build
cp ./dist/RasPicoMoreExt.mjs ../docs/
https://jcodeorg.github.io/raspico-more-dev/RasPicoMoreExt.mjs
