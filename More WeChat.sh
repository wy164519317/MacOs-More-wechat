#!/bin/bash
rang="[0-9]"
counts=1
echo "您想打开几个微信，输入数字后敲击enter" 
read number
number=${number:-0} 
while [[ $number != $rang ]] 
    do
        echo "输入范围错误，请重新输入"
        read number
    done
        echo "稍等，正在执行多开"
while (($number>=$counts))
    do
        nohup /Applications/WeChat.app/Contents/MacOS/WeChat > /dev/null 2>&1 &
        echo "成功打开了$counts 个微信"
        let "counts++"
    done
        echo "祝您使用愉快！"