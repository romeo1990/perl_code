#!/usr/bin/perl

#use warnings;  #���þ��湦��
#use diagnostics;  #��ʾ����ϸ����������������ʹ���б���
#perl -w ����ʱ���þ��湦��
#perl -Mdiagnostics ����ʱ������Ҫʱ����diagnostics����


#philosophy of perl: no built-in limits�����ڽ������ƣ�


#�������Ͱ�����ֵ���ͣ���Ϊ˫���ȣ����ַ�������
#����Ҳ��ת��Ϊ˫��������


#����ע��
=pod
print 123_123_123_123;
print 10/3;  #�����С��
print 10 % 3;
=cut


print 'hello\n';  #�����ű�ʾ���ַ������ǵ������ڵ����ݣ���Ҫ��ʾ'����\������Ҫ��֮ǰ����\
print "world\n";  #1.˫���ſ���ʹ��ת���ַ���\\��ʾ��б�ߣ�\"��ʾ˫���� 2.����ʹ�ñ����ڲ�
print "I love " . "China";  #�ַ�������
print "test" x 3;  #Сдx��ʾ�ַ����ظ�


#���ֺ��ַ���֮����Զ�ת��ȡ���ڲ�������Ҫʲô���͵Ĳ�����
print "12" * "3";
print "12litao" * 3;  #�ַ����з����ֵĲ��ֻ���ԣ�ֻ�������ֲ���������
print "litao" * 3;  #��ȫû�������ǣ��ַ����ᱻתΪ��


$var = "litao";  #��ʶ���Ƽ�Сд������֮��ʹ���»���
$var .= " is a student\n";
print $var;

print "I love ", "China\n";  #print���һϵ����,������ֵ
print "I love " . "BUPT\n";  #ʹ��.����


$company = "Baidu";
print "I love $company\n";  #�����ڲ�
print "I love ${company}, too\n";  #ʹ��${var}
print "I love \$company\n";  #ʹ��\���ڲ�
print 'I love $company';  #����ʹ�õ�����


#��ֵ�Ƚ�   == �= <  >  <= >=
#�ַ����Ƚ� eq ne lt gt le ge
#���������Ĳ����������Ͳ���ʱ��Բ��������Զ�ת�ͣ�����"a"=="b"��ԶΪ��


$name = "litao";
if($name eq "litao") {
	print "you are litao\n";
} elsif($name eq "Tom") {
	print "you are Tom\n";
} else {
	print "you are not allowed to access\n";
}

#���ڲ���ֵ��perl��û�в������ͣ�����һЩ��׼���ж�
#���֣�0Ϊ�٣�����Ϊ��
#�ַ�����''�մ�Ϊ�٣�����Ϊ��
#'0'��0Ҳ��ͬһ������ֵ��Ҳ��������


$line = <STDIN>;  #<STDIO>�����û������룬ֱ������س�Ϊֹ������������ַ������һ����һ��\n
print $line;
chomp($line);  #chomp�����Ὣ�ַ�����β��\nȥ����Ҳ����д��chomp $line;������\n��Ҳֻɾ��һ��
print $line;

chomp($text = <STDIN>);  #����д�����������֣��������Ļ��з�
print $text;

$count = 0;
while($count < 10) {
	print "count is now $count\n";
	$count ++;
}

#��һ������û�б���ֵ����ʼֵ����undef����һ�����͵ı���ֵ����������ʱ���������ַ���ʹ�ã��ͱ������մ���������������ʹ�ã��ͱ�����0
#���������ڲ���Խ��򲻺���ʱ�ͻ᷵��undef

#defined�������жϱ����ǲ���undef
$line = <STDIN>;
if(defined($line)) {
	print "The input was $line\n";
} else {
	#���û�����ctrl+dʱ��$line��ֵ����undef
	print "No input available!\n";
}
