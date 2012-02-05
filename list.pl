#!/usr/bin/perl

#the motto of perl: There is more than one way to do it

#列表list & 数组array

$arr[0] = "kobe";  #$arr表示数组
$arr[1] = "james";
$arr[2] = "wade";

print $#arr . "\n";  #$#arr是最后一个元素的索引值
print $arr[-1] . "\n";  #负索引，-1指的是最后一个元素的索引值


@list = ("kobe", "james", "wade");  #@list表示列表
@num = (1 .. 100);  #..范围操作符，最左边的数字到最右边的数字，每次加1


@subjects = qw(c java php perl python);  #qw以空白字符（空格、制表符、换行符）生成列表，不用写引号
@directories = qw{
	/home/work/hello.txt
	/home/study/hello.py
};  #各种分界符均可


@players = ("kobe", "james", "wade");
#@players = qw(kobe james wade);
print @players[1] . "\n";



#pop和push针对数组的右边
print pop(@players) . "\n";  #pop
push(@players, "paul");  #push
print @players[2] . "\n";

#shift和unshit针对数组的左边
print shift(@players) . "\n";
unshift(@players, "howard");
print @players[0] . "\n";


print @players . "\n";  #@players是列表的长度
print "players are as follows: @players\n";  #数组内插
print "the first player is: @players[0]\n";  #数组元素内插


#foreach遍历列表
foreach $player (@players) {
	print $player . "\n";
}


print "before sort: @players\n";
@players = sort @players;
print "after sort: @players\n";
@players = reverse @players;
print "after reverse: @players\n";
