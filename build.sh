rm -rf build
mkdir -p build/hokkien
cd build || return
git clone --depth 1 https://github.com/rime/rime-luna-pinyin.git
cd hokkien || return
cp ../rime-luna-pinyin/*.yaml .
cp ../../*.yaml .
cp -rf ../../lua .
cp -rf ../../rime.lua .
zip -r hokkien.zip ./*
cp hokkien.zip ../
