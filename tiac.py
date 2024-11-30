#!/usr/bin/python3
import sys
from datetime import datetime

def calculate_tax_included(price, tax_rate):
    current_time = datetime.now()
    print(f"現在時刻: {current_time.strftime('%Y-%m-%d %H:%M:%S')}")

    if tax_rate < 0:
        print("消費税率は正の値を入力してください")
        return

    tax_included_price = price * (1 + tax_rate)
    print(f"税込み: {tax_included_price:.2f}円")

    if price == 3:
        print("サァン")
    elif price == 114514:
        print("やりますねぇ")
    elif price >= 10000:
        print("一万円入りまーす！")
    elif price < 0:
        print("なんだい、金が欲しいのかい？")
    else:
        print("普通の金額かぁ")

if __name__ == "__main__":
    if len(sys.argv) != 3:
       print("使い方: python3 script.py <金額> <消費税率>")
       sys.exit(0)


    price_input = sys.argv[1]
    tax_rate_input = sys.argv[2]

    if price_input.replace('.', '', 1).isdigit() and tax_rate_input.replace('.', '', 1).isdigit():
        price = float(price_input)
        tax_rate = float(tax_rate_input) / 100
        calculate_tax_included(price, tax_rate)
    else:
        print("エラー: 金額と消費税率は数値で入力してください。")
        sys.exit(1)


#税込み金額計算、Tax-included amount calculation略してtiac.py    if price_input.replace('.', '', 1).isdigit() and tax_rate_input.replace('.', '', 1).isdigit():
        price = float(price_input)
        tax_rate = float(tax_rate_input) / 100
        calculate_tax_included(price, tax_rate)
