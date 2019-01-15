#!/bin/zsh

members=()
# txtをmembers配列に格納
while read line
do
    members+=$line
done </dev/stdin


checkedMatch=()
# マッチング結果を出力
echo "マッチング結果です"
for ((i=1 ; i <= ${#members[*]} ; i+=2))
do
    (( matchCount++ ))
    first=$members[i]
    second=$members[i+1]
    # 奇数の時は、最初の人が2度マッチング
    if [ -z "$second" ]; then
        second=$members[1]
    fi

    checkedMatch+="\n$first と $second"
done

echo $checkedMatch
