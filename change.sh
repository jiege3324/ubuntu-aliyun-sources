#!/bin/sh
cat<<EOF
                                  _oo0oo_
                                 088888880
                                 88" . "88
                                 (| -_- |)
                                  0\ = /0
                               ___/'---'\___
                             .' \\\\|     |// '.
                            / \\\\|||  :  |||// \\
                           /_ ||||| -:- |||||- \\
                          |   | \\\\\\  -  /// |   |
                          | \_|  ''\---/''  |_/ |
                          \  .-\__  '-'  __/-.  /
                        ___'. .'  /--.--\  '. .'___
                     ."" '<  '.___\_<|>_/___.' >'  "".
                    | | : '-  \'.;'\ _ /';.'/ - ' : | |
                    \  \ '_.   \_ __\ /__ _/   .-' /  /
                ====='-.____'.___ \_____/___.-'____.-'=====
                                  '=---='


              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
EOF


#need root 
if [ $(id -u) -ne 0 ]; then
    echo "Need Root!"
    exit 0
fi
#bak
cp /etc/apt/sources1604.list /etc/apt/sources1604.list.bak
#replace
sed -i 's/http:\/\/archive.ubuntu.com/http:\/\/mirrors.aliyun.com/g' /etc/apt/sources1604.list
sed -i 's/http:\/\/security.ubuntu.com/http:\/\/mirrors.aliyun.com/g' /etc/apt/sources1604.list
#update
apt-get update
