#!/bin/bash

# Path to Images
queryPath_veri="./data/VeRi_wild/images/images/"
queryList_veri="./data/VeRi_wild/train_test_split/test_3000_query.txt"
galleryPath_veri="./data/VeRi_wild/images/images/"
galleryList_veri="./data/VeRi_wild/train_test_split/test_3000.txt"


# Number of classes
num_veri=40672

python -u eval.py $queryPath_veri $queryList_veri $galleryPath_veri $galleryList_veri -n $num_veri --dataset veri --backbone resnet50 --weights './models/resnet50/Car_epoch_200.pth' --save_dir './results/wild/resnet50/'

