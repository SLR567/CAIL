source ~/.bashrc
export PATH=/home/ubuntu-user/anaconda3/bin:$PATH
INPUT_TRAIN_FILE=/home/ubuntu-user/NLP_5/data/train_merged.json
INPUT_DEV_FILE=/home/ubuntu-user/NLP_5/data/dev.json

OUTPUT_DIR=/home/ubuntu-user/NLP_5/baseline/output_data_dir #this dir must the same as the data_dir in train.sh

mkdir ${OUTPUT_DIR}
tokenizer_path='/home/ubuntu-user/NLP_5/chinese_roberta_wwm_ext_pytorch/'

python data_process.py \
    --tokenizer_path=$tokenizer_path \
    --full_data=${INPUT_TRAIN_FILE} \
    --example_output=${OUTPUT_DIR}/train_example.pkl.gz \
    --feature_output=${OUTPUT_DIR}/train_feature.pkl.gz \

python data_process.py \
    --tokenizer_path=$tokenizer_path \
    --full_data=${INPUT_DEV_FILE} \
    --example_output=${OUTPUT_DIR}/dev_example.pkl.gz \
    --feature_output=${OUTPUT_DIR}/dev_feature.pkl.gz \


