#!/bin/csh
echo "Input a date:"
@ year = $argv[1]
@ month = $argv[2]
@ day = $argv[3]

if ( ( $month > 12 ) || ( $day > 31 ) ) then
	echo "Wrong month!"
	exit
endif


set mth_day = (31 59 90 120 151 181 212 243 273 304 334 365)

if ( $month == 1 ) then 
	goto Jan
else if ( $month == 2 ) then 
	goto Feb 
else 
	goto Other
endif


answer:
echo "GG is $days"
exit

Jan:
@ days = ($mth_day[$month] )
goto answer


Feb:
#kkkkkkkkkkkkkkfdddssssssssssssssssff
if ( ($year % 400 == 0) && ($day > 28) ) then
	@ days = ($mth_day[$month] + 1)
else if ( ($year % 4 == 0) && ($year % 100 != 0) && ($day > 28) ) then
	@ days = ($mth_day[$month] + 1)
else
	@ days = ($mth_day[$month] )
endif
goto answer


Other:
if ( ($year % 400 == 0) ) then
	@ days = ($mth_day[$month] + 1)
else if ( ($year % 4 == 0) && ($year % 100 != 0) )then
	@ days = ($mth_day[$month] + 1)
else
	@ days = ($mth_day[$month] )
endif
goto answer

