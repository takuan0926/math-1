#!/bin/bash
# SPDX-FileCopyrightText: 2024 suzuki takuma <s23c1076vc@s.chibakoudai.jp>
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo "${1}行目が違うよ"
    res=1
}

res=0

# 引数なしでtiac.pyを実行して、エラーメッセージを確認
out=$(python3 ./tiac.py)
if [ "$out" != "使い方: python3 script.py <金額> <消費税率>" ]; then
    ng "$LINENO"
fi

# 不正な引数を渡してtiac.pyを実行して、終了ステータスと出力を確認
out=$(python3 ./tiac.py 10000 10)
if [ "$?" != 1 ]; then
    ng "$LINENO"
fi

# 再度引数なしで実行し、期待されるエラーメッセージを確認
out=$(python3 ./tiac.py)
if [ "$out" != "使い方: python3 script.py <金額> <消費税率>" ]; then
    ng "$LINENO"
fi

# 最後に結果を表示
if [ "${res}" = 0 ]; then
    echo OK
else
    exit 1
fi

