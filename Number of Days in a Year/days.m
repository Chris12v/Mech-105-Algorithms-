function nd = days(mo, da, leap)
%File name: days.m
% Created on:9/11/2019
%Created by: Christian Hanson
%Last modified:9/11/2019
%Description: This is a function that calculates the number of days given
%the month and day aswell as if it is a leap year. Unfortunately it
%calculates each month at 31 days
%Inputs:mo, da, leap
mo=input('Month\n');
if mo<1 || mo>12
    error('Month has to be between 1-12')
end
da=input('Day\n');
if da<1 || da>31
    error('The day has be between 1-31')
end
leap=input('Leap year\n');
if leap<0 || leap>1
    error('One means yes and 0 means no')
end
if leap==1 && mo>3
    t_d=31*(mo-1)+da+1;
else
    t_d=31*(mo-1)+da;
end
t_d
end