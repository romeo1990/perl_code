#!/usr/bin/perl

#use warnings;  #ÆôÓÃ¾¯¸æ¹¦ÄÜ
#use diagnostics;  #ÏÔÊ¾¸üÏêÏ¸µÄÎÊÌâÃèÊö£¬µ«»áÊ¹ÔËĞĞ±äÂı
#perl -w ÔËĞĞÊ±ÆôÓÃ¾¯¸æ¹¦ÄÜ
#perl -Mdiagnostics ÔËĞĞÊ±½öÔÚĞèÒªÊ±¼ÓÔØdiagnostics³ÌĞò


#philosophy of perl: no built-in limits£¨ÎŞÄÚ½¨µÄÏŞÖÆ£©


#±êÁ¿ÀàĞÍ°üÀ¨ÊıÖµÀàĞÍ£¨¾ùÎªË«¾«¶È£©ºÍ×Ö·û´®ÀàĞÍ
#ÕûÊıÒ²±»×ª»¯ÎªË«¾«¶ÈÀàĞÍ


#¶àĞĞ×¢ÊÍ
=pod
print 123_123_123_123;
print 10/3;  #½á¹ûÊÇĞ¡Êı
print 10 % 3;
=cut


print 'hello\n';  #µ¥ÒıºÅ±íÊ¾µÄ×Ö·û´®¾ÍÊÇµ¥ÒıºÅÄÚµÄÄÚÈİ£¬ÈôÒª±íÊ¾'»òÕß\£¬ÕâĞèÒªÔÚÖ®Ç°¼ÓÉÏ\
print "world\n";  #1.Ë«ÒıºÅ¿ÉÒÔÊ¹ÓÃ×ªÒå×Ö·û£¬\\±íÊ¾·´Ğ±Ïß£¬\"±íÊ¾Ë«ÒıºÅ 2.¿ÉÒÔÊ¹ÓÃ±äÁ¿ÄÚ²å
print "I love " . "China";  #×Ö·û´®Á¬½Ó
print "test" x 3;  #Ğ¡Ğ´x±íÊ¾×Ö·û´®ÖØ¸´


#Êı×ÖºÍ×Ö·û´®Ö®¼äµÄ×Ô¶¯×ª»¯È¡¾öÓÚ²Ù×÷·ûĞèÒªÊ²Ã´ÀàĞÍµÄ²Ù×÷Êı
print "12" * "3";
print "12litao" * 3;  #×Ö·û´®ÖĞ·ÇÊı×ÖµÄ²¿·Ö»áºöÂÔ£¬Ö»±£ÁôÊı×Ö²¿·ÖÀ´ÔËËã
print "litao" * 3;  #ÍêÈ«Ã»ÓĞÊı×ÖÊÇ£¬×Ö·û´®»á±»×ªÎªÁã


$var = "litao";  #±êÊ¶·ûÍÆ¼öĞ¡Ğ´£¬µ¥´ÊÖ®¼äÊ¹ÓÃÏÂ»®Ïß
$var .= " is a student\n";
print $var;

print "I love ", "China\n";  #printÊä³öÒ»ÏµÁĞÓÃ,¸ô¿ªµÄÖµ
print "I love " . "BUPT\n";  #Ê¹ÓÃ.Á´½Ó


$company = "Baidu";
print "I love $company\n";  #±äÁ¿ÄÚ²å
print "I love ${company}, too\n";  #Ê¹ÓÃ${var}
print "I love \$company\n";  #Ê¹ÓÃ\²»ÄÚ²å
print 'I love $company';  #»òÕßÊ¹ÓÃµ¥ÒıºÅ


#ÊıÖµ±È½Ï   == £= <  >  <= >=
#×Ö·û´®±È½Ï eq ne lt gt le ge
#µ±²Ù×÷·ûµÄ²Ù×÷ÊıµÄÀàĞÍ²»¶ÔÊ±»á¶Ô²Ù×÷Êı×ö×Ô¶¯×ªĞÍ£¬ËùÒÔ"a"=="b"ÓÀÔ¶ÎªÕæ


$name = "litao";
if($name eq "litao") {
	print "you are litao\n";
} elsif($name eq "Tom") {
	print "you are Tom\n";
} else {
	print "you are not allowed to access\n";
}

#¹ØÓÚ²¼¶ûÖµ£¬perl²¢Ã»ÓĞ²¼¶ûÀàĞÍ£¬¸ù¾İÒ»Ğ©±ê×¼À´ÅĞ¶Ï
#Êı×Ö£¬0Îª¼Ù£¬ÆäÓàÎªÕæ
#×Ö·û´®£¬''¿Õ´®Îª¼Ù£¬ÆäÓàÎªÕæ
#'0'ºÍ0Ò²ÊÇÍ¬Ò»¸ö±êÁ¿Öµ£¬Ò²±»µ±×ö¼Ù


$line = <STDIN>;  #<STDIO>½ÓÊÜÓÃ»§µÄÊäÈë£¬Ö±µ½ÊäÈë»Ø³µÎªÖ¹£¬ËùÒÔÊäÈëµÄ×Ö·û´®×îºóÒ»¶¨ÓĞÒ»¸ö\n
print $line;
chomp($line);  #chompº¯Êı»á½«×Ö·û´®½áÎ²µÄ\nÈ¥µô£¬Ò²¿ÉÒÔĞ´×÷chomp $line;ÈôÁ½¸ö\n£¬Ò²Ö»É¾³ıÒ»¸ö
print $line;

chomp($text = <STDIN>);  #³£¼ûĞ´·¨£¬¶ÁÈëÎÄ×Ö£¬ºöÂÔ×îºóµÄ»»ĞĞ·û
print $text;

$count = 0;
while($count < 10) {
	print "count is now $count\n";
	$count ++;
}

#ÈôÒ»¸ö±äÁ¿Ã»ÓĞ±»¸³Öµ£¬³õÊ¼Öµ¾ÍÊÇundef£¨ÊÇÒ»ÖÖÀàĞÍµÄ±êÁ¿Öµ£©£¬Èô¹û´ËÊ±±äÁ¿µ±×ö×Ö·û´®Ê¹ÓÃ£¬¾Í±»¿´×ö¿Õ´®£¬Èô±»µ±×öÊı×ÖÊ¹ÓÃ£¬¾Í±»¿´×ö0
#Ğí¶à²Ù×÷·ûÔÚ²ÎÊıÔ½½ç»ò²»ºÏÀíÊ±¾Í»á·µ»Øundef

#definedº¯ÊıÀ´ÅĞ¶Ï±äÁ¿ÊÇ²»ÊÇundef
$line = <STDIN>;
if(defined($line)) {
	print "The input was $line\n";
} else {
	#µ±ÓÃ»§°´ÏÂctrl+dÊ±£¬$lineµÄÖµ¾ÍÊÇundef
	print "No input available!\n";
}
