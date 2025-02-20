#!/bin/bash
echo "hello world"
(( sum=25 + 35 ))
echo "$sum"
echo "what is your name?"
read name
echo "my name is $name"
echo " Total arguments : $# "
echo " first arguments : $1 "
echo " second argument : $2 "
read a b
result=`expr $a + $b `
echo "result:$result"

