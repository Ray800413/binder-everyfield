#!/bin/bash
fileid="1X6KVJloBrXwylg_Dk129zMT1_WSdx0Er"
filename="sample_data.zip"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}
unzip ./${filename} -d ./sample_data && rm ./${filename} ./cookie