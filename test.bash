#!/bin/bash
# SPDX-FileCopyrightText: 2024 suzuki takuma <s23c1076vc@s.chibakoudai.jp>
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo ${1}行目が違うよ
    res=1
}

res=0

# 適切な引数を指定してtiac.pyを実行
out=$(echo 10000 10 | ./tiac.py)
echo "$out"
[ "${out}" = "税込み: 11000.00円" ] || ng "$LINENO"

# 変な時
out=$(echo あ | ./tiac.py)
echo "$out"
[ "$?" = 1 ] || ng "$LINENO"

# 空の入力
out=$(echo | ./tiac.py)
echo "$out"
[ "$?" = 1 ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res

