#!/bin/bash
buster generate
find static -name *.html -type f -exec sed -i '' 's#http://localhost:2368#https://www.andresguisado.com#g' {} \;
buster deploy
#git add -A
#git commit -m "Update on the website at $(date)"
#git push origin master
