if [ -z "${VERSION}" ]; then echo 'VERSIONを指定してください。'; exit 1; fi

curl -OL https://golang.org/dl/go"${VERSION}".darwin-amd64.pkg && \
open go"${VERSION}".darwin-amd64.pkg && \
read -rp "インストーラの処理が終わり次第ENTERを押して処理を進める: " && \
sudo mv /usr/local/go ~/workspaces/Go/"${VERSION}" && \
sudo chown -hR yyh-gl:staff ~/workspaces/Go/"${VERSION}" && \
rm -rf ./go"${VERSION}".darwin-amd64.pkg && \
echo "GOPATHの変更＆ターミナルの再起動をお忘れなく"
