function [nd] = days(mo,da,leap)
%days This function takes the three input variables, mo, da, and leap and
%uses that information to determine how many days have elapsed in that year
addDay=0;
monthDayLong=31;
monthDayFeb=28;
monthDayMed=30;
monthDay=0;
%Is there a leap year?
if leap==1
    addDay=1;
else
    addDay=0;
end
%What is the month?
if mo==1 %January
    monthDay=0;
elseif mo==2 %Febuary
    monthDay=monthDayLong;
elseif mo==3 %March
    monthDay=monthDayLong+monthDayFeb;
elseif mo==4 %April
    monthDay=2*monthDayLong+monthDayFeb;
elseif mo==5 %May
    monthDay=2*monthDayLong+monthDayFeb+monthDayMed;
elseif mo==6 %June
    monthDay=3*monthDayLong+monthDayFeb+monthDayMed;
elseif mo==7 %July
    monthDay=3*monthDayLong+monthDayFeb+2*monthDayMed;
elseif mo==8 %August
    monthDay=4*monthDayLong+monthDayFeb+2*monthDayMed;
elseif mo==9 %Septermber
    monthDay=5*monthDayLong+monthDayFeb+2*monthDayMed;
elseif mo==10 %October
    monthDay=5*monthDayLong+monthDayFeb+3*monthDayMed;
elseif mo==11 %November
    monthDay=5*monthDayLong+monthDayFeb+3*monthDayMed;
else %December 
     monthDay=6*monthDayLong+monthDayFeb+4*monthDayMed;
end
nd = monthDay+da+addDay;
end

