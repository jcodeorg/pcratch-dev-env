# ぷくらっち開発環境
『ぷくらっち』シリーズの共通開発Build環境です。

# docker の起動方法
docker-compose build
docker-compose up -d
docker exec -it raspico-more /bin/bash

# ぷくらっち用 Pcratch IoT 拡張（『ぷくらっち』or『きたらっち』に、『Pcratch IoT』拡張ブロックを追加します）

# ディレクトリ構造

```
pcratch/
├── pcratch-dev-env/  (ビルド環境)
|   ├── docker/
|   │   ├── Dockerfile
|   │   ├── docker-compose.yml
|   │   ├── env/  (環境変数設定)
|   │   └── scripts/  (セットアップスクリプト)
|   ├── README.md
|   └── docs/  (環境構築のドキュメント)
└── pcratch-iot-ext/  (拡張モジュールのレポジトリ)
    ├── dist/
    ├── src/
    ...
```



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
