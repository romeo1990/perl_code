#!/usr/bin/perl

#the motto of perl: There is more than one way to do it

#�б�list & ����array

$arr[0] = "kobe";  #$arr��ʾ����
$arr[1] = "james";
$arr[2] = "wade";

print $#arr . "\n";  #$#arr�����һ��Ԫ�ص�����ֵ
print $arr[-1] . "\n";  #��������-1ָ�������һ��Ԫ�ص�����ֵ


@list = ("kobe", "james", "wade");  #@list��ʾ�б�
@num = (1 .. 100);  #..��Χ������������ߵ����ֵ����ұߵ����֣�ÿ�μ�1


@subjects = qw(c java php perl python);  #qw�Կհ��ַ����ո��Ʊ�������з��������б�����д����
@directories = qw{
	/home/work/hello.txt
	/home/study/hello.py
};  #���ַֽ������


@players = ("kobe", "james", "wade");
#@players = qw(kobe james wade);
print @players[1] . "\n";



#pop��push���������ұ�
print pop(@players) . "\n";  #pop
push(@players, "paul");  #push
print @players[2] . "\n";

#shift��unshit�����������
print shift(@players) . "\n";
unshift(@players, "howard");
print @players[0] . "\n";


print @players . "\n";  #@players���б�ĳ���
print "players are as follows: @players\n";  #�����ڲ�
print "the first player is: @players[0]\n";  #����Ԫ���ڲ�


#foreach�����б�
foreach $player (@players) {
	print $player . "\n";
}


print "before sort: @players\n";
@players = sort @players;
print "after sort: @players\n";
@players = reverse @players;
print "after reverse: @players\n";
