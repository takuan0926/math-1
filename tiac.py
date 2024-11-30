#!/usr/bin/python3
import sys
from datetime import datetime

def calculate_tax_included(price, tax_rate):
    current_time = datetime.now()
    print(f"現在時刻: {current_time.strftime('%Y-%m-%d %H:%M:%S')}")
    tax_included_price = price * (1 + tax_rate)
    print(f"税込み: {tax_included_price:.2f}円")

if __name__ == "__main__":
    try:
        # 標準入力から1行ずつ読み込む
        for line in sys.stdin:
            inputs = line.strip().split()
            if len(inputs) != 2:
                print("エラー: 金額と消費税率をスペースで区切って指定してください。", file=sys.stderr)
                continue

            price_input = sys.argv[1]
            tax_rate_input = sys.argv[2]


    if price_input.replace('.', '', 1).isdigit() and tax_rate_input.replace('.', '', 1).isdigit():
                price = float(price_input)
                tax_rate = float(tax_rate_input) / 100
                calculate_tax_included(price, tax_rate)
            else:
                print("エラー: 金額と消費税率は数値で指定してください。", file=sys.stderr)
    except Exception as e:
        print(f"エラーが発生しました: {e}", file=sys.stderr)
        sys.exit(1)


#税込み金額計算、Tax-included amount calculation略してtiac.py
        price = float(price_input)
        tax_rate = float(tax_rate_input) / 100
        calculate_tax_included(price, tax_rate)
