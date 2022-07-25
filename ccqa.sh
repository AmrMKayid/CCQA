#!/bin/bash

MONTHLY_WARC=("https://data.commoncrawl.org/crawl-data/CC-MAIN-2022-27/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2022-21/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2022-05/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2021-49/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2021-43/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2021-39/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2021-31/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2021-25/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2021-21/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2021-17/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2021-10/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2021-04/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2020-50/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2020-45/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2020-40/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2020-34/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2020-29/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2020-24/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2020-16/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2020-10/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2020-05/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2019-51/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2019-47/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2019-43/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2019-39/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2019-35/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2019-30/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2019-26/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2019-22/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2019-18/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2019-13/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2019-09/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2019-04/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2018-51/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2018-47/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2018-43/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2018-39/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2018-34/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2018-30/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2018-26/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2018-22/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2018-17/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2018-13/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2018-09/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2018-05/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2017-51/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2017-47/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2017-43/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2017-39/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2017-34/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2017-30/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2017-26/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2017-22/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2017-17/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2017-13/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2017-09/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2017-04/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2016-50/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2016-44/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2016-40/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2016-36/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2016-30/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2016-26/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2016-22/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2016-18/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2016-07/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2015-48/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2015-40/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2015-35/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2015-32/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2015-27/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2015-22/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2015-18/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2015-14/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2015-11/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2015-06/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2014-52/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2014-49/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2014-42/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2014-41/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2014-35/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2014-23/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2014-15/warc.paths.gz")


# MONTHLY_WARC=("https://data.commoncrawl.org/crawl-data/CC-MAIN-2022-27/warc.paths.gz" "https://data.commoncrawl.org/crawl-data/CC-MAIN-2022-21/warc.paths.gz")
WARC_PATH=$HOME/CCQA/warc
HTTPS_PREFIX="https://"
GZ_PREFIX=".gz"
WARC_SUFFIX="warc.paths"
CWD=$PWD

echo "downloading fasttext bin"
FASTTEXT_BIN="https://dl.fbaipublicfiles.com/fasttext/supervised-models/lid.176.bin"
wget $FASTTEXT_BIN
FASTTEXT_BIN_PATH="$PWD/lid.176.bin"

echo "create conda env"
conda create -n ccqa python=3.7.3 -y
conda activate ccqa
pip install fasttext==0.9.2 lxml==4.3.2

echo "setup rust"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"

echo "setup rust build"
cd $CWD/rust && cargo build

echo "cd $CWD"
cd $CWD

echo "Creating WARC Directory: $WARC_PATH"
mkdir -p $WARC_PATH
for month_warc in "${MONTHLY_WARC[@]}";
do
    echo "Downloading $month_warc ..."
    wget -r -np -N -P $WARC_PATH  $month_warc
    file_path=$WARC_PATH/${month_warc#"$HTTPS_PREFIX"}

    echo "Unzipping $file_path ..."
    gunzip -f $file_path
    unzipped_file_path=${file_path%"$GZ_PREFIX"}

    echo "Reading segments from $unzipped_file_path..."
    while read segment; do
        echo "Downloading segment $segment"
        wget -r -np -N -P $WARC_PATH https://data.commoncrawl.org/$segment
        segment_path=$WARC_PATH/data.commoncrawl.org/$segment

        echo "Unzipping segment $segment_path ..."
        gunzip -f $segment_path
        unzipped_segment_path=${segment_path%"$GZ_PREFIX"}

        echo "Processing Common Crawl data (Rust) to create the minified HTML data $unzipped_segment_path.mhtml ..."
        cd $CWD/rust && cargo run $unzipped_segment_path "$unzipped_segment_path.mhtml"
    done <$unzipped_file_path

    mhtml_paths=${unzipped_file_path%"$WARC_SUFFIX"}/segments/
    for mhtml_path in $mhtml_paths/*
    do
        mhtml_files_path=${mhtml_path}/warc/
        echo "Curating the minified HTML data (Python) in directory $mhtml_files_path ..."
        cd $CWD/python && python mhtml_to_json.py --fasttext_path=$FASTTEXT_BIN_PATH --input_folder=$mhtml_files_path --output_folder=$mhtml_files_path
        for json_file in $mhtml_files_path/*.json;
        do
            echo "Closed book and Passage Retrieval for $json_file"
            cd $CWD/python && python closed_book_processing.py --data_path=$json_file --output_path="$json_file-closed-book"
            cd $CWD/python && python passage_retrieval_processing.py --data_path=$json_file --output_path="$json_file-drr"
        done
    done
done
