#!/usr/bin/perl

# subroutines(子程序)

# use strict;
# 强制执行一些严格的、确保良好程序设计的规则

sub hello {
	$n ++;	# n is a global variable
	$name = "litao";	# name is also global
	print "now n is " . $n . "\n";	# 返回值为1代表输出成功
}

$a = &hello;	# calling
&hello;
&hello;
print $name . "\n";

#注后定义的函数会覆盖前面的同名的函数，所有的地方均会调用最后定义的函数



# perl中所有的子程序都有返回值，最后一次运算的结果即为子程序的返回值
# perl会自动将参数列表化为特殊的数组变量@_，可以使用$_[0]来获取参数
sub add {
	print "@_\n";
	$_[0] + $_[1] + $_[2];
}

$result = &add(1, 2, 3);
print "result is $result\n";


# 改变形参不会改变实参
sub change_param {
	$_[0] = "kobe";
}

$name = "wade";
&change_param;
print "now the name is $name\n";



# perl在默认情况下所有的变量都是全局变量，也可以使用操作符my来创建私有变量
sub max {
	my($m, $n);
	($m, $n) = @_;
	# 注：前两句常常被简化为my($m, $n) = @_;
	if ($m > $n) { $m } else { $n }
	# 注：perl允许省略语句块的最后一个分号，最好还是都加上吧
}

$result = &max(2, 3);
print $m . "\n";	#不能引用m，因为m是私有变量
print "result is $result\n";



# 让子程序适应任意数目的参数
sub max_new {
	# 采用高水线的算法(high-water mark)
	my($max_so_far) = shift @_;
	foreach (@_) {
		if ($_ > $max_so_far) {
			$max_so_far = $_;
		}
	}
	$max_so_far;
}

$result = &max_new(1, 2, 3, 4, 5);
print "the max is $result\n";

# 注：循环控制变量默认为$_，请看如下例子
@list = qw(wade kobe james);
foreach (@list) {
	print $_ . "\n";
}



# my可以使用在子程序、if、while、foreach等的程序块里
foreach (1..10) {
	# 1..10会遍历1到10
	my($square) = $_ * $_;
	print "$_ squared is $square.\n";
}



sub which_element_is {
	my($what, @array) = @_;
	foreach (0 .. $#array) {
		if ($what eq @array[$_]) {
			return $_;	# return直接返回
		}
	}
	-1;	# 没有找到返回-1
}

my @names = qw(kobe wade james howard);
my $result = &which_element_is("james", @names);
print $result . "\n";



# 函数调用省略&和括号，前提函数定义在函数调用之前，并且函数名和和内置函数名不同
# 建议不省略&
sub division {
	$_[0] / $_[1];
}

my $result = division 4, 2;
print $result . "\n"; 
