# robosys2024

ロボットシステム学

-  このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます。
- @ 2024 suzuki takuma

--------------------------------------------------------------------------------------------------

# tiac - 税込み金額計算ツール
このtiacは、指定した金額と消費税率を基に税込み金額を計算するコマンドです。

## 機能
- 金額と消費税率からの税込み金額の算出
- 無効な入力に対しては適切なエラーメッセージを出力します
- 現在の時刻を計算時に表示

## 動作環境
このコマンドはPythonで作られており、以下の環境で動作確認済
- Python 3.8.10
- OS: Windows

## 使用方法
以下の形式でコマンドラインからスクリプトを実行します。

初回のみスクリプトの実行権限を付与
```
chmod +x tiac
```
コマンドの形式
```
echo "<金額> <消費税率>" | ./tiac
```
## 入力フォーマット
金額:      数値（整数または小数）
消費税率:  パーセント表記の数値（例 10は10%を意味します）

## 使用例
正常な入力
```
echo "10000 10" | ./tiac
```
出力
```
現在時刻: 2024-11-30 12:13:40
税込み: 11000.00円
```
不正な入力
```
echo "not_a_number" | ./tiac
```
出力
```
エラー: 数値を入力してください。
```

---
## エラーメッセージ一覧
- "エラー: 金額と消費税率は数値で指定してください。"
   入力が数値でない場合。
- "エラー: 金額と消費税率をスペースで区切って指定してください。"
   入力が2つの値（空白区切り）になっていない場合。

## 著作権
© 2024 Suzuki Takuma
