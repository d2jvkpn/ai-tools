#! /usr/bin/env bash
set -eu -o pipefail
_wd=$(pwd)
_path=$(dirname $0 | xargs -i readlink -f {})

apt update
apt -y install vim

pip3 install ipython
pip3 install -r requirements.txt

wget https://s3.amazonaws.com/static.nomic.ai/gpt4all/2023_GPT4All_Technical_Report.pdf

python3 langchain_02.py configs/config.yaml data/result.yaml
