#!/bin/bash


#########################################################################
#   Copyright (C) 2019 All rights reserved.
#   
#   FILE: images.sh
#   AUTHOR: Max Xu
#   MAIL: xuhuan@live.cn
#   DATE: 09/18/2019    TIME:22:44:48
#
#########################################################################

#echo "All the images needed by $1"

helm install $1 --generate-name --dry-run | grep "image:" | awk -F" " '{print $2}' | sed 's/^"//g' | sed 's/\"//g' | sort | awk '!seen[$0]++'
