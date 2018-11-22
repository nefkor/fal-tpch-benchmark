#!/bin/bash
sudo apt-get update
sudo apt-get -y --force-yes install gcc make flex bison byacc git

mkdir tmp

#Import code into tmp

cd /tmp/tools/

make clean
make -f Makefile.suite

#For generating 1TB, execute following command
nohup ./dsdgen -scale 1000 -verbose Y -FORCE -dir tmp1000 &

nohup gsutil -m  cp *.dat gs://aol-temp/gendata1000 &




nohup sudo ./dbgen -s 100 -v Y -f -dir /mnt/data_in/tmp100 &



----------
sudo apt-get update
sudo apt-get -y --force-yes install gcc make flex bison byacc git
make clean
make -f makefile.suite

nohup ./dbgen -s 100 -v Y -f &