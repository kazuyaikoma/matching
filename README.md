# matching
チーム内で、1on1ランチをランダムにマッチングさせるためのzshで書いたシェルスクリプト

# 使い方
1) txtファイルでチームメンバーの名前を改行区切りで書く
2) txtファイルを、matching.shの標準入力に入れる
    - macだと`gshuf`コマンドが使える
3) ランダムマッチング成功！
## コマンド例
macの場合: `gshuf members.txt | ./matching.sh`
