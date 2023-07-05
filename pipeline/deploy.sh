#! /usr/bin/env sh
set -e

echo "start  $0 {"

rm -rf example_webserver/ 
git clone https://github.com/test-user09/example_webserver.git

cd example_webserver/
cp ../index.html .
git add --all 
git commit -m "$(date)"
git push 

rm -rf example_webserver/ 
echo "end  $0 }"