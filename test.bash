#!/bin/bash

ng () {
    echo "${1} 行目が違うよ"
    res=1
}

res=0

# 正しい引数を渡してtiac.pyを実行
out=$(python3 ./tiac.py 10000 10)
filtered_out=$(echo "$out" | sed 's/現在時刻:.*//')

# 期待する出力
expected_output="税込み: 11000.00円"

# 正常ケース
if [ "${filtered_out}" != "${expected_output}" ]; then
    ng "$LINENO"
fi

# 不正な入力（文字列）を与える場合
out=$(python3 ./tiac.py あ)
filtered_out=$(echo "$out" | sed 's/現在時刻:.*//')

# エラーメッセージが含まれていることを確認
expected_error="使い方: python3 script.py <金額> <消費税率>"
if [ "${filtered_out}" != "${expected_error}" ]; then
    ng "$LINENO"
fi

# 空の入力
out=$(python3 ./tiac.py)
filtered_out=$(echo "$out" | sed 's/現在時刻:.*//')

# エラーメッセージが含まれていることを確認
if [ "${filtered_out}" != "${expected_error}" ]; then
    ng "$LINENO"
fi

if [ "${res}" = 0 ]; then
    echo OK
else
    exit 1
fi

