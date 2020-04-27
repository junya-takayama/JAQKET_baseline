#!/bin/bash -x

pip install -r requirements.txt

DATA_DIR="../data/"
if [ ! -d ${DATA_DIR} ]; then
  mkdir ${DATA_DIR}
fi

wget -nc https://jaqket.s3-ap-northeast-1.amazonaws.com/data/train_questions.json -P ${DATA_DIR}
wget -nc https://jaqket.s3-ap-northeast-1.amazonaws.com/data/dev1_questions.json -P ${DATA_DIR}
wget -nc https://jaqket.s3-ap-northeast-1.amazonaws.com/data/dev2_questions.json -P ${DATA_DIR}
wget -nc https://jaqket.s3-ap-northeast-1.amazonaws.com/data/candidate_entities.json.gz -P ${DATA_DIR}


WORK_DIR="../working_dir/"
if [ ! -d ${WORK_DIR} ]; then
  mkdir ${WORK_DIR}
  cp ../JAQKET_baseline/run_jaqket_baseline_sample.sh ${WORK_DIR}
fi

echo "next ..."
echo "$ cd ${WORK_DIR} && ./run_jaqket_baseline_sample.sh"
