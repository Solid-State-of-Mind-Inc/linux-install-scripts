#!/usr/bin/env bash
OWNER="danmar"
REPO="cppcheck"
LATEST_RELEASE=$(curl -L -s -H 'Accept: application/json' https://github.com/$OWNER/$REPO/releases/latest/)
LATEST_VERSION=$(echo $LATEST_RELEASE | sed -e 's/.*"tag_name":"\([^"]*\)".*/\1/')
echo "CppCheck latest release version: $LATEST_VERSION"
wget https://github.com/danmar/cppcheck/archive/refs/tags/$LATEST_VERSION.tar.gz
tar -xzf $LATEST_VERSION.tar.gz
cd $REPO-$LATEST_VERSION
mkdir build
cd build
sudo apt install -y qttools5-dev
cmake -DBUILD_GUI=ON -DUSE_MATCHCOMPILER=ON -DCMAKE_BUILD_TYPE=Release ..
cmake --build .
sudo cmake --install . --config Release
cd ../../
rm -fr $REPO-$LATEST_VERSION
rm $LATEST_VERSION.tar.gz