#!/bin/bash
############################################################################################
# Script for installing Python3.8.1 on Ubuntu 20.04 (could be used for other version too)
# Author: 1st.
############################################################################################


FILE_PATH = "/root"
cd $ FILE_PATH

echo -e "\n----- Download Source Package -----"

sudo wget https://www.python.org/ftp/python/3.8.1/Python-3.8.10.tgz

echo -e "\n----- Untar Package -----"

sudo tar -zxvf Python-3.8.10.tgz

echo -e "\n----- Make -----"

cd Python-3.8.10

sudo ./configure  --prefix=/usr/local/pyhton3.8

sudo make

sudo make install

echo -e "\n----- Create Link -----"

sudo rm /usr/bin/python

sudo ln -s /usr/local/pyhton3.8/bin/pyhton3.8 /usr/bin/python

echo -e "\n----- Over!!! -----"