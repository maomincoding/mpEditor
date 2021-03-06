#! /bin/sh

npm run build
rm -rf gh-pages
mkdir gh-pages
cp -r dist/* gh-pages
cd gh-pages

sed -i "" "s/src=\/static/src=.\/static/g" index.html

git init
git add -A
date_str=`date "+DATE: %m/%d/%Y%nTIME: %H:%M:%S"`
git commit -m "build on $date_str"
echo 'push remote github'
