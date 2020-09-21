#!/bin/bash

for file in $(ls configs)
do
        cp ~/.vim/configs/$file configs
done
