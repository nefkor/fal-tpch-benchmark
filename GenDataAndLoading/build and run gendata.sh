#!/bin/bash
sudo apt-get update
sudo apt-get -y --force-yes install gcc make flex bison byacc git

mkdir tmp

#Import code into tmp

cd /tmp/tools/

make clean
make -f Makefile.suite

#For generating 1TB, execute following command
nohup ./dsdgen -scale 1000 -verbose Y -terminate n -FORCE -dir tmp1000 &

nohup gsutil -m  cp *.dat gs://aol-temp/gendata1000 &



----------
sudo apt-get update
sudo apt-get -y --force-yes install gcc make flex bison byacc git
make clean
make -f makefile

#For generating 10TB, execute following command
nohup ./dbgen -s 10000 -v Y -f &


nohup sudo gsutil -m cp *.tbl gs://aol-temp/gendata_tpch_100 &