#!/bin/bash
gen() {
  CPU=$1
  SCALE=$2
  SEED=$3
  seq 1 $CPU \
    | xargs -t -P$CPU -I__ \
        ./dsdgen \
          -SCALE $SCALE \
          -DELIMITER \| \
          -PARALLEL $CPU \
          -CHILD __ \
          -TERMINATE N \
          -RNGSEED $SEED \
          -DIR ./tmp1000/ \
          -FORCE \
          -verbose Y
}
gen 4 1000 42