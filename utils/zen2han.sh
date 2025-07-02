#!/bin/bash

# @file     zen2han.sh
# @author   soblin
# @brief    Usage: /zen2han.sh <yourfile>.tex
# @details  This script modifies encoding in the specified file.
# @details  The original file is backuped as <yourfile>.{zen2han, maru2period}

if [ ! "$1" ]; then
    echo "specify filename"
    exit 0
fi

echo "zenkaku to hankaku"
sed -i.zen2han -e 'y/ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ０１２３４５６７８９（）％〜/ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789()%~/' $1

echo "kutoutenn to period"
sed -i.maru2period -e 's/。/. /g' -e 's/、/, /g' $1
