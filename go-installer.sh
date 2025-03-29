#!/bin/zsh

if [ -z "${VERSION}" ]; then echo 'VERSIONを指定してください。'; exit 1; fi

mkdir $HOME/go
curl -OL https://golang.org/dl/go"${VERSION}".darwin-amd64.pkg
open go"${VERSION}".darwin-amd64.pkg
read STDIN'?インストーラの処理が終わり次第ENTERを押して処理を進める: '
sudo mv /usr/local/go $HOME/go/"${VERSION}"
sudo chown -hR `logname`:staff $HOME/go/"${VERSION}"
rm -rf ./go"${VERSION}".darwin-amd64.pkg
echo "GOPATHの変更＆ターミナルの再起動をお忘れなく"
