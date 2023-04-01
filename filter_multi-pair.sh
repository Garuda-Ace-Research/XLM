#!/bin/bash

# Parse command-line arguments
while [[ $# -gt 0 ]]
do
key="$1"

case $key in
    --src)
    SRC="$2"
    shift
    shift
    ;;
    --tgt)
    TGT="$2"
    shift
    shift
    ;;
    --path)
    FOLDER_PATH="$2"
    shift
    shift
    ;;
    *)
    echo "Unknown option: $1"
    exit 1
    ;;
esac
done

# Check if required arguments are provided
if [ -z "$SRC" ] || [ -z "$TGT" ] || [ -z "$FOLDER_PATH" ]
then
    echo "Usage: ./filter_para.sh --src [SRC_LANG] --tgt [TGT_LANG] --path [FOLDER_PATH]"
    exit 1
fi

# Run the old script 3 times
for FILTER in "train" "test" "valid"
do
    SRC_FILE_PATH="$FOLDER_PATH/$SRC-$TGT.$SRC.$FILTER.untok"
    TGT_FILE_PATH="$FOLDER_PATH/$SRC-$TGT.$TGT.$FILTER.untok"
    ./filter_pair-lang.sh "$SRC_FILE_PATH" "$TGT_FILE_PATH"
done
