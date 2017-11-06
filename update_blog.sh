#!/bin/bash
buster generate
find static -name *.html -type f -exec sed -i '' 's#http://localhost:2368#https://www.andresguisado.io/static#g' {} \;
find static -name *.rss -type f -exec sed -i '' 's#http://localhost:2368#https://www.andresguisado.io/static#g' {} \;
buster deploy
#git add -A
#git commit -m "Update on the website at $(date)"
#git push origin master
