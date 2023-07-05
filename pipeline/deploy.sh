#! /usr/bin/env sh
set -e

echo "start  $0 {"

rm -rf example_webserver/ 
git clone "https://$MACHINE_USER_TOKEN@github.com/test-user09/example_webserver.git"

cd example_webserver/
cp ../index.html .
git add --all 
git commit -m "$(date)" || true 
git push 

cd ..
rm -rf example_webserver/ 
echo "end  $0 }"