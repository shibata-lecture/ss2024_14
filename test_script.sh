#!/bin/sh

tmp=/tmp/$$					# 変数を使って表記を短く
echo "input 2 argments" > $tmp-args		# 回答準備：引数の数
echo "input natural number" > $tmp-nat 	# 回答準備：数字じゃない

ERROR_EXIT () {
  echo "$1" >&2		# エラーメッセージ(引数1)を標準エラー出力に表示
  rm -f $tmp-*			# 作ったファイルの削除
  exit 1			# エラー終了
}

# テスト開始
# teat1: 引数の数が足りない
./script.sh 2> $tmp-ans && ERROR_EXIT "error in test1-1"	# エラーメッセージを関数に渡す
diff $tmp-ans $tmp-args || ERROR_EXIT "error in test1-2"
