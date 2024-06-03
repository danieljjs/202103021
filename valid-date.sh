#!/bin/bash

month="$1"
day="$2"
year="$3"

if [ $# -ne 3 ]
then
echo "입력값 오류"
exit 1
fi

case $month in
  1|jan|january)
  month=Jan;;
  2|feb|february)
  month=Feb;;
  3|mar|march)
  month=Mar;;
  4|apr|april)
  month=Apr;;
  5|may)
  month=May;;
  6|jun|june)
  month=Jun;;
  7|jul|july)
  month=Jul;;
  8|aug|august)
  month=Aug;;
  9|sep|september)
  month=Sep;;
  10|oct|october)
  month=Oct;;
  11|nov|november)
  month=Nov;;
  12|dec|december)
  month=Dec;;
  *)
  exit 2
esac

case $month in
  Jan)
  date=31;;
  Feb)
  date=28;;
  Mar)
  date=31;;
  Apr)
  date=30;;
  May)
  date=31;;
  Jun)
  date=30;;
  Jul)
  date=31;;
  Aug)
  date=31;;
  Sep)
  date=30;;
  Oct)
  date=31;;
  Nov)
  date=30;;
  Dec)
  date=31;;
  *)
  exit 3
esac

if [ $((year%4)) -ne 0 ]
  then
  echo "$year는 윤년이 아니다."
elif [ $((year%400)) -eq 0 ]
  then
  echo "$year는 윤년이다. 2월은 29일까지 존재한다."
    if [ $month = Feb ]
    then
    date=29
    fi
elif [ $((year%100)) -eq 0 ]
  then
  echo "$year는 윤년이 아니다."
else
  echo "$year는 윤년이다. 2월은 29일까지 존재한다."
    if [ $month = Feb ]
    then
    date=29
    fi
fi

if [ $((day)) -gt $((date)) ]
  then
  echo "입력한 날짜가 그 달의 마지막 날보다 큽니다."
  echo "$day는 유효하지 않습니다."
elif [ $((day)) -lt 1]
  then
  echo "입력한 날짜가 1보다 작습니다."
  echo "$day는 유효하지 않습니다."
fi

echo "$month $day $year"

