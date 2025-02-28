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

# mbit more
cd ../mbit-more-v2
npm install
npm install minilog
npm run build
cp ./dist/microbitMore.mjs ../docs/
https://jcodeorg.github.io/raspico-more-dev/microbitMore.mjs

# なぜだか、extension-supportなどのディレクトリが足りず、Buildできないです・・・
mkdir /scratch-gui/node_modules/scratch-vm/src/extension-support
mkdir /scratch-gui/node_modules/scratch-vm/src/util
cp /mbit-more-v2/src/vm/extension-support/* /scratch-gui/node_modules/scratch-vm/src/extension-support
cp /mbit-more-v2/src/vm/util/* /scratch-gui/node_modules/scratch-vm/src/util
mkdir /scratch-gui/node_modules/scratch-vm/src/io
cp /mbit-more-v2/src/vm/io/* /scratch-gui/node_modules/scratch-vm/src/io

# ble.js の捜索
find / -name "ble.js"
cd /mbit-more-v2
/scratch-gui/node_modules/scratch-vm/src/io/ble.js
cd /scratch-gui/node_modules/scratch-vm/src/io/
mv ble.js bak-ble.js # 一回退避
cp /mbit-more-v2/src/vm/io/bak-ble.js ble.js

# ble-web.js の退避
cd /mbit-more-v2
# scratch-gui/node_modules/scratch-vm/src/io/ble.js
cd /scratch-gui/node_modules/scratch-vm/src/io/
mv ble-web.js bak-ble-web.js # 一回退避
cp /mbit-more-v2/src/vm/io/bak-ble-web.js ble-web.js