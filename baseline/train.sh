date
source ~/.bashrc
export PATH=/home/ubuntu-user/anaconda3/bin:$PATH
bert_dir='/home/ubuntu-user/NLP_5/chinese_roberta_wwm_ext_pytorch/'
python run_cail.py \
    --name train_chinese_roberta_wwm_ext_mergeData \
    --bert_model $bert_dir \
    --data_dir output_data_dir \
    --batch_size 2 \
    --eval_batch_size 32 \
    --lr 4e-5 \
    --gradient_accumulation_steps 1 \
    --epochs 20 \

date
