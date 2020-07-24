#!/bin/bash

# Path to Images
queryPath_veri="./data/VeRi_wild/images/images/"
queryList_veri="./data/VeRi_wild/train_test_split/test_3000_query.txt"
galleryPath_veri="./data/VeRi_wild/images/images/"
galleryList_veri="./data/VeRi_wild/train_test_split/test_3000.txt"


# Number of classes
num_veri=40672

/nethome/ssinha97/anaconda3.7/bin/python3.7 -u eval_siamese.py $queryPath_veri $queryList_veri $galleryPath_veri $galleryList_veri -n $num_veri --dataset veri --batch_size 96 --backbone siamese --weights './models/siamese_trial/Car_epoch_200.pth' --save_dir './results/wild/siamese_trial/'

