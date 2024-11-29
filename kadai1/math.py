#!/usr/bin/python3
from datetime import datetime
def calculate_tax_included():
    try:
        current_time = datetime.now()
        print(f"現在時刻: {current_time.strftime('%Y-%m-%d %H:%M:%S')}")

        price = float(input("金額を入力してください: "))

        tax_rate = float(input("消費税率を入力してください（例: 10 = 10%）: ")) / 100
        if tax_rate < 0:
            print("消費税率は正の値を入力してください。")
            return

        tax_included_price = price * (1 + tax_rate)
        print(f"消費税込みの金額: {tax_included_price:.2f}円")

        if price == 3:
            print("サァン")
        elif price == 114514:
            print("やりますねぇ")
        elif price >= 10000:
            print("一万円入りまーす！")
        elif price < 0:
            print("なんだい、金が欲しいのかい？")
        else:
            print("しけた客だなー")
    except ValueError:
        print("有効な数字を入力してください。")

if __name__ == "__main__":
    #繰り返し
    while True:
        calculate_tax_included()
        retry = input("\nもう一度？ (y/n):").strip().lower()
        if retry != 'y':
            print("終了しました")
            break
    
