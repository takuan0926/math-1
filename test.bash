#!/bin/bash

ng () {
    echo "${1} 行目が違うよ"
    res=1
}

res=0

# 正しい引数を渡してtiac.pyを実行
out=$(python3 ./tiac.py 10000 10)
echo "Raw output: $out"  # Raw outputの確認

# 期待する出力
expected_output="税込み: 11000.00円"

# 正常ケース
if [ "${out}" != "${expected_output}" ]; then
    ng "$LINENO"
fi

# 不正な入力（文字列）を与える場合
out=$(python3 ./tiac.py あ)
echo "Raw output: $out"  # Raw outputの確認

# 期待するエラーメッセージ
expected_error="使い方: python3 script.py <金額> <消費税率>"

# grepを使って部分一致を確認
echo "$out" | grep -q "$expected_error"
if [ $? -ne 0 ]; then
    ng "$LINENO"
fi

# 空の入力
out=$(python3 ./tiac.py)
echo "Raw output: $out"  # Raw outputの確認

# エラーメッセージが含まれていることを確認
echo "$out" | grep -q "$expected_error"
if [ $? -ne 0 ]; then
    ng "$LINENO"
fi

if [ "${res}" = 0 ]; then
    echo OK
else
    exit 1
fi

