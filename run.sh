
cd ~

curl -X POST -H 'Content-Type: application/json' -d "About to clone" https://webhook.site/eeb8307f-67ce-460b-9a87-24f9f7575d48

git clone -b v4.1.1 https://github.com/NAVCoin/navcoin-core.git

curl -X POST -H 'Content-Type: application/json' -d "clone complete" https://webhook.site/eeb8307f-67ce-460b-9a87-24f9f7575d48


cd navcoin-core

curl -X POST -H 'Content-Type: application/json' -d "cd to navcoin-core" https://webhook.site/eeb8307f-67ce-460b-9a87-24f9f7575d48


./autogen.sh

curl -X POST -H 'Content-Type: application/json' -d "ran autogen" https://webhook.site/eeb8307f-67ce-460b-9a87-24f9f7575d48


./configure LDFLAGS="-L/usr/local/berkeley-db-4.8/lib/" \
                CPPFLAGS="-I /usr/local/berkeley-db-4.8/include/" \
                --enable-hardening \
                --without-gui \
                --enable-upnp-default

curl -X POST -H 'Content-Type: application/json' -d "About to Make" https://webhook.site/eeb8307f-67ce-460b-9a87-24f9f7575d48


ls
make

curl -X POST -H 'Content-Type: application/json' -d "Make Complete" https://webhook.site/eeb8307f-67ce-460b-9a87-24f9f7575d48
OUTPUT="$(make install)"
curl -X POST -H 'Content-Type: application/json' -d "${OUTPUT}" https://webhook.site/eeb8307f-67ce-460b-9a87-24f9f7575d48


curl -X POST -H 'Content-Type: application/json' -d "Install Complete" https://webhook.site/eeb8307f-67ce-460b-9a87-24f9f7575d48

ls
cd ..

rm -fr /navcoin-core/*

curl -X POST -H 'Content-Type: application/json' -d "rm navcoin-src Complete" https://webhook.site/eeb8307f-67ce-460b-9a87-24f9f7575d48


navcoind -testnet -rpcuser=hi -rpcpassword=pass &
curl -X POST -H 'Content-Type: application/json' -d "Start navcoin core Complete" https://webhook.site/eeb8307f-67ce-460b-9a87-24f9f7575d48


curl -X POST -H 'Content-Type: application/json' -d "Sleeping" https://webhook.site/eeb8307f-67ce-460b-9a87-24f9f7575d48
sleep 5
curl -X POST -H 'Content-Type: application/json' -d "awake" https://webhook.site/eeb8307f-67ce-460b-9a87-24f9f7575d48

navcoin-cli -testnet -rpcuser=hi -rpcpassword=pass addnode "176.9.19.245" "add"
navcoin-cli -testnet -rpcuser=hi -rpcpassword=pass addnode "46.4.24.136" "add"

curl -X POST -H 'Content-Type: application/json' -d "add nodes complete" https://webhook.site/eeb8307f-67ce-460b-9a87-24f9f7575d48


OUTPUT="$(navcoin-cli -testnet -staking -rpcuser=hi -rpcpassword=pass listreceivedbyaddress 0 true)"
echo "${OUTPUT}"

curl -X POST -H 'Content-Type: application/json' -d "${OUTPUT}" https://webhook.site/eeb8307f-67ce-460b-9a87-24f9f7575d48


curl -X POST -H 'Content-Type: application/json' -d "Finished" https://webhook.site/eeb8307f-67ce-460b-9a87-24f9f7575d48


sleep 9999999999
