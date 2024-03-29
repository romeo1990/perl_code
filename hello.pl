#!/usr/bin/perl

#use warnings;  #启用警告功能
#use diagnostics;  #显示更详细的问题描述，但会使运行变慢
#perl -w 运行时启用警告功能
#perl -Mdiagnostics 运行时仅在需要时加载diagnostics程序


#philosophy of perl: no built-in limits（无内建的限制）


#标量类型包括数值类型（均为双精度）和字符串类型
#整数也被转化为双精度类型


#多行注释
=pod
print 123_123_123_123;
print 10/3;  #结果是小数
print 10 % 3;
=cut


print 'hello\n';  #单引号表示的字符串就是单引号内的内容，若要表示'或者\，这需要在之前加上\
print "world\n";  #1.双引号可以使用转义字符，\\表示反斜线，\"表示双引号 2.可以使用变量内插
print "I love " . "China";  #字符串连接
print "test" x 3;  #小写x表示字符串重复


#数字和字符串之间的自动转化取决于操作符需要什么类型的操作数
print "12" * "3";
print "12litao" * 3;  #字符串中非数字的部分会忽略，只保留数字部分来运算
print "litao" * 3;  #完全没有数字是，字符串会被转为零


$var = "litao";  #标识符推荐小写，单词之间使用下划线
$var .= " is a student\n";
print $var;

print "I love ", "China\n";  #print输出一系列用,隔开的值
print "I love " . "BUPT\n";  #使用.链接


$company = "Baidu";
print "I love $company\n";  #变量内插
print "I love ${company}, too\n";  #使用${var}
print "I love \$company\n";  #使用\不内插
print 'I love $company';  #或者使用单引号


#数值比较   == �= <  >  <= >=
#字符串比较 eq ne lt gt le ge
#当操作符的操作数的类型不对时会对操作数做自动转型，所以"a"=="b"永远为真


$name = "litao";
if($name eq "litao") {
	print "you are litao\n";
} elsif($name eq "Tom") {
	print "you are Tom\n";
} else {
	print "you are not allowed to access\n";
}

#关于布尔值，perl并没有布尔类型，根据一些标准来判断
#数字，0为假，其余为真
#字符串，''空串为假，其余为真
#'0'和0也是同一个标量值，也被当做假


$line = <STDIN>;  #<STDIO>接受用户的输入，直到输入回车为止，所以输入的字符串最后一定有一个\n
print $line;
chomp($line);  #chomp函数会将字符串结尾的\n去掉，也可以写作chomp $line;若两个\n，也只删除一个
print $line;

chomp($text = <STDIN>);  #常见写法，读入文字，忽略最后的换行符
print $text;

$count = 0;
while($count < 10) {
	print "count is now $count\n";
	$count ++;
}

#若一个变量没有被赋值，初始值就是undef（是一种类型的标量值），若果此时变量当做字符串使用，就被看做空串，若被当做数字使用，就被看做0
#许多操作符在参数越界或不合理时就会返回undef

#defined函数来判断变量是不是undef
$line = <STDIN>;
if(defined($line)) {
	print "The input was $line\n";
} else {
	#当用户按下ctrl+d时，$line的值就是undef
	print "No input available!\n";
}
