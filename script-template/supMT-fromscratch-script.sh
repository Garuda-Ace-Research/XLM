#!/bin/bash -l
#$ -P multilm
#$ -l gpus=1
#$ -l gpu_c=7.0
#$ -N [CHANGE_ME]
#$ -l h_rt=60:00:00

module load gcc/5.5.0
module load python3/3.7.7
module load cuda/10.1
module load pytorch/1.5
module load apex/0.1
module load python3/3.8.6
module load cuda/11.1
module load pytorch/1.8.1
export LANG="en_US.UTF-8"

python train.py \
--exp_name [CHANGE_ME] \
--dump_path ./dumped \
--data_path 'data/processed/[SRC]-[TGT]' \
--lgs '[SRC]-[TGT]' \
--bt_steps '[SRC]-[TGT]-[SRC],[TGT]-[SRC]-[TGT]' \
--mt_steps "[SRC]-[TGT],[TGT]-[SRC]" \
--lambda_ae '0:1,100000:0.1,300000:0' \
--encoder_only false \
--emb_dim 1024 \
--n_layers 6 \
--n_heads 8 \
--dropout 0.1 \
--attention_dropout 0.1 \
--gelu_activation true \
--tokens_per_batch 2000 \
--batch_size 32 \
--bptt 256 \
--optimizer adam_inverse_sqrt,beta1=0.9,beta2=0.98,lr=0.0001 \
--epoch_size 200000 \
--eval_bleu true \
--max_vocab 200000 \
--stopping_criterion 'valid_[SRC]-[TGT]_mt_bleu,10' \
--validation_metrics 'valid_[SRC]-[TGT]_mt_bleu'
