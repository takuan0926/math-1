#!/bin/bash

ng () {
    echo ${1}行目が違うよ
    res=1
}

res=0

# 引数を渡してtiac.pyを実行
out=$(python3 ./tiac.py 10000 10)
echo "$out"
[ "${out}" = "税込み: 11000.00円" ] || ng "$LINENO"

# 変な時
out=$(python3 ./tiac.py あ)
echo "$out"
[ "$?" = 1 ] || ng "$LINENO"

# 空の入力
out=$(python3 ./tiac.py)
echo "$out"
[ "$?" = 1 ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res

