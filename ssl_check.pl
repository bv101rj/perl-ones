#!/usr/bin/env perl
#
#
#rj 2-8-2018
#Get our ip so that we can pass it down
$ip = shift;
$ssl11=`/usr/lib/nagios/plugins/check_http -I $ip --ssl=1.1`;
$ssl1=`/usr/lib/nagios/plugins/check_http -I $ip --ssl=1`;
$ssl12=`/usr/lib/nagios/plugins/check_http -I $ip --ssl=1.2`;
$ssl3=`/usr/lib/nagios/plugins/check_http -I $ip --ssl=3`;

#check all versions of ssl we just tested to see if they are good. 
if ($ssl11 =~ m/OK/){
print $ssl11;
exit 0
}
if ($ssl1 =~ m/OK/){
print $ssl1;
exit 0
}
if ($ssl12 =~ m/OK/){
print $ssl12;
exit 0
}
if ($ssl3 =~ m/OK/){
print $ssl3;
exit 0
}
exit 2

