function [I] = Simpson(x,y)
%Simpson: The "Simpson" Function uses the Simpson 1/3 rule to numerically
%integrate a function when it is represented by two sets of points. 
%   Inputs:
%       x: The "x" values or independent variable in the data set
%       y: The "y" values or dependent variable in the data set
%   Outputs:
%       I: The value of the integral
%Checking to see if there are enough data points
lenx=length(x); leny=length(y);
if lenx~=leny
    error('The number of data points must be the same.')
end
%Checking to see if x is equally spaced
remainder=mod(lenx,2); 
trapUsed=0;
fx0=y(1,1); fxFin=y(leny,1); oddSum=0; evenSum=0;
%Use composite 1/3 rule
if remainder~=0 
    %Odd Summation
    for i=1:2:lenx 
        oddSum=oddSum+y(i,1);
    end
    %Even Summation
    for j=2:2:lenx-2
        evenSum=evenSum+y(j,1);
    end
    only1Third=((x(lenx,1)-x(1,1))/(3*lenx))*(fx0+4*oddSum+2*evenSum+fxFin);
%Use composite 1/3 and trapizoidal
else  
    %Odd Summation
    for i=1:2:lenx-2 
        oddSum=oddSum+y(i,1);
    end
    %Even Summation
    for j=2:2:lenx-2
        evenSum=evenSum+y(j,1);
    end
    OneThird=((x(lenx,1)-x(1,1))/(3*lenx))*(fx0+4*oddSum+2*evenSum+x(lenx-1));
    warning('The trapizoidal approximation will be used for the last part of the intergral approximation.')
    trapInt=(x(lenx,1)-x(lenx-1,1))*((y(leny-1,1)+y(leny,1))/2);
    trapUsed=1;
end
%Tests to see if the program used the trapiziodal approximation
if trapUsed==0
    I=only1Third;
else
    I=OneThird+trapInt;
end
end

