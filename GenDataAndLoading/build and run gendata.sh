#!/bin/bash

# For TPC-DS
##Installing needed resources in the Linux Machine
sudo apt-get update
sudo apt-get -y --force-yes install gcc make flex bison byacc git

mkdir tmp

## Import code into tmp
git clone https://github.com/nefkor/fal-tpch-benchmark.git


## Go to tpc-ds tools for generate data and build make file
make clean
make -f Makefile.suite

## For generating 1TB, execute following command
nohup ./dsdgen -scale 1000 -verbose Y -terminate n -FORCE -dir tmp1000 &


# --------------------------------------------------------------------
# For TPC-H
## Installing needed resources in the Linux Machine
sudo apt-get update
sudo apt-get -y --force-yes install gcc make flex bison byacc git
make clean
make -f makefile

## Go to tpc-ds tools for generate data and build make file
nohup ./dbgen -s 10000 -v Y -f &