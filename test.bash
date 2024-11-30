#!/bin/bash

ng () {
    echo ${1}行目が違うよ
    res=1
}

res=0
+ res=0

# 引数を渡してtiac.pyを実行し、時刻部分を削除
out=$(python3 ./tiac.py 10000 10)
# 出力から"現在時刻:"を削除し、比較用の文字列を取得
filtered_out=$(echo "$out" | sed 's/現在時刻:.*//')

# 期待する出力
expected_output="税込み: 11000.00円"

# 比較
[ "${filtered_out}" = "${expected_output}" ] || ng "$LINENO"

# 変な時
out=$(python3 ./tiac.py あ)
filtered_out=$(echo "$out" | sed 's/現在時刻:.*//')

[ "$?" = 1 ] || ng "$LINENO"

# 空の入力
out=$(python3 ./tiac.py)
filtered_out=$(echo "$out" | sed 's/現在時刻:.*//')

[ "${filtered_out}" = "" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
+ '[' 1 = 0 ']'
exit $res
+ exit 1

