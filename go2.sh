#!/bin/bash -ex

for seed in 0 1 2 3 4 
do
  python consis_clr_30.py --DS $1 --lr 0.001 --local --num-gc-layers 3 --aug $2 --alpha $3 --seed $seed
  python consis_clr_30.py --DS $1 --lr 0.01 --local --num-gc-layers 3 --aug $2 --alpha $3 --seed $seed

done

