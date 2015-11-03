#!/bin/sh

who | grep $1 | awk '
BEGIN {
    FS=" "
}
#/$1/
{
    username=$1
    d1=$3 " " $4;
    gsub(/[-:]/," ",d1); 
    d1=d1 " 00"; 
    timegap=systime()-mktime(d1); 
	#print "timegap=" timegap;
    timegap_days=int(timegap/(3600*24));
    tmp=timegap-timegap_days*3600*24;
	#print "timegap_days=" timegap_days;
    timegap_hours=int(tmp/3600)
    tmp=tmp-timegap_hours*3600;
	#print "timegap_hours=" timegap_hours;
    timegap_minutes=int(tmp/60)
    tmp=tmp-timegap_minutes*60;
	#print "timegap_minutes=" timegap_minutes;
    timegap_seconds=tmp;
	#print "timegap_seconds=" timegap_seconds;
    	printf("User %s logged in system on %s for %d days %d hours %d min %d sec\n",username,$2,timegap_days,timegap_hours,timegap_minutes,timegap_seconds); 
}
'
