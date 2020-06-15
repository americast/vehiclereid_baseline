#!/bin/bash

# Path to Images
queryPath_veri="./data/VeRi/image_query/"
queryList_veri="./list/veri_query_list.txt"
galleryPath_veri="./data/VeRi/image_test/"
galleryList_veri="./list/veri_test_list.txt"


# Number of classes
num_veri=576

/nethome/ssinha97/anaconda3.7/bin/python3.7 -u eval.py $queryPath_veri $queryList_veri $galleryPath_veri $galleryList_veri --dataset veri --backbone resnet101 --weights './models/resnet101/Car_epoch_150.pth' --save_dir './results/veri/resnet101/'

