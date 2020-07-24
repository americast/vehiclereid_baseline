#!/bin/bash

# Path to Images
ImagePath_veri="./data/VeRi_wild/images/images/"
TrainList_veri="./data/VeRi_wild/train_test_split/train_list.txt"
# Number of classes
num_veri=40672

#CUDA_VISIBLE_DEVICES=0 nohup python -u train.py $ImagePath_veri $TrainList_veri -n $num_veri --batch_size 64 --val_step 5 --write-out --start_epoch 0 --backbone resnet50 --save_dir './models/resnet50/' --epochs 100 > logs/resnet50.log 2>&1 &
#which python3
CUDA_VISIBLE_DEVICES="" /nethome/ssinha97/anaconda3.7/bin/python3.7 -u train_cpu.py $ImagePath_veri $TrainList_veri -n $num_veri --batch_size 300 --val_step 5 --write-out --start_epoch 100 --backbone resnet50 --save_dir './models/resnet50/' --epochs 200
