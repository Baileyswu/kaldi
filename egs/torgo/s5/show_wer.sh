#!/bin/bash

mkdir -p res
for model_type in mono tri1 tri2 tri3 sgmm sgmm_mmi_b0.1; do 
    for wav_type in array head; do
    (   
        ./local/get_wer_consistence.py cexp/$model_type/$wav_type > res/wer-$model_type-$wav_type.log
    )&
    done
done