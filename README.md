# ぷくらっち開発環境
『ぷくらっち』シリーズの共通開発Build環境です。

# docker の起動方法
# docker desktop 起動
# ターミナル起動
# cd docker
docker-compose build
docker-compose up -d
docker exec -it pcratch-dev-env /bin/bash

# scratch-vm
git clone https://github.com/jcodeorg/scratch-vm.git
cd scratch-vm
npm install
npm link
cd ..

# scratch-gui
git clone https://github.com/jcodeorg/scratch-gui.git
cd scratch-gui
npm install
npm link scratch-vm
npm link
BUILD_MODE=dist npm run build
# 必要に応じて
npx update-browserslist-db@latest
mkdir .vscode
openssl req -x509 -newkey rsa:2048 -keyout .vscode/localhost-key.pem -out .vscode/localhost.pem -days 365 -nodes -subj "/CN=localhost"
# scratch-gui 起動
npm start
cd ..
# link 確認
ls -la scratch-gui/node_modules | grep scratch-vm

# xcratch.github.io
git clone https://github.com/jcodeorg/xcratch.github.io.git


# ぷくらっち用 Pcratch IoT 拡張（『ぷくらっち』or『きたらっち』に、『Pcratch IoT』拡張ブロックを追加します）

## ディレクトリ構造

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
├── scratch-vm/  (xcratch/scratch-vm)
├── scratch-gui/  (xcratch/scratch-gui)
└── pcratch-iot-ext/  (拡張モジュールのレポジトリ)
    ├── docs/
    │   ├──dist/PiotExt.mjs  (Pcratch IoT 拡張モジュール)
    ├── src/
    ...
```
## node 22.14.0
# n lts
n 22.14.0
# git clone xcratch/scratch-vm
cd /scratch-vm
npm install
# git clone xcratch/scratch-gui
cd /scratch-gui
npm install
## ビルド
cd /pcratch-iot-ext
npm install
npm run build
https://jcodeorg.github.io/pcratch-iot-ext/dist/piotext.mjs






# 不要
cp ./dist/microbitMore.mjs ../docs/
# 調査
npm run setup-dev
npm run build
# なぜだか、extension-supportなどのディレクトリが足りず、Buildできないです・・・
mkdir /scratch-gui/node_modules/scratch-vm/src/extension-support
cp /mbit-more-v2/src/vm/extension-support/* /scratch-gui/node_modules/scratch-vm/src/extension-support
mkdir /scratch-gui/node_modules/scratch-vm/src/util
cp /mbit-more-v2/src/vm/util/* /scratch-gui/node_modules/scratch-vm/src/util
mkdir /scratch-gui/node_modules/scratch-vm/src/io
cp /mbit-more-v2/src/vm/io/* /scratch-gui/node_modules/scratch-vm/src/io

ls /scratch-gui/node_modules/scratch-vm/src/
https://github.com/xcratch/xcx-example.git


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
cp /mbit-more-v2/src/vm/extension-support/* /scratch-gui/node_modules/scratch-vm/src/extension-support
mkdir /scratch-gui/node_modules/scratch-vm/src/util
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
