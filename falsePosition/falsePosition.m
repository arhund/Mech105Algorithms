function [xr,fx,ea,iter] = falsePosition(func,xl,xu,es,maxiter)
%This function will be taking in the equation f(x), or similar, and other 
%related variables to identify where the root of the equation is. The function 
%runs until ea is less that es, meaning the approximation is good enough 
%given the desired inputs.
%Detailed explaination of the variables 
%   Inputs
%       func: function being evaluated 
%       xl:lower guess
%       xu: upper guess
%       es: desired error
%       maxiter: desiered  number of iterations
%   Outputs
%       root: estimated root
%       fx: function evaluated at root
%       ea: approximate relative error in a percent
%       iter: how many iterations were preformed
%False-Position formula
%   xr=xu-((f(xu)*(xl-xu))/(f(xl)-f(xu)))
clearvars -except func xl xu es maxiter
clc
if nargin<3
    error('There are not enough inputs, please try again.')
end
test=func(xl)*func(xu);
%This multiples the value that is given at xl and xu to see if there is a
%sign change
if test>0
    error('There is no sign change, please pick another set of bracket points.')
end
%Insures that there is a root between the two bracketed points
if nargin<4||isempty(es)
    es=0.0001;
end
%This assigns the error to es if the user did not specify
if nargin<5||isempty(maxiter)
    maxiter=200;
end
%This assigns 200 to the number of iterations if the user did not specify

numiter=0;
ea=100;
xrold=xl;
while numiter<maxiter && ea>es
    xr=xu-((func(xu)*(xl-xu))/(func(xl)-func(xu))); %xr is the next estimate
    funcXr=func(xr);
    numiter=numiter+1;
    if xr~=0
        ea=((xr-xrold)/xr)*100;%Equation for approximate relitive error
    elseif ea<=es %stopping criterion  
        break
    elseif  func(xl)*fx<0
        xu=xr;
        xrold=xr;
    elseif func(xu)*fx<0
        xl=xr;
        xrold=xr;
    else 
        disp('Error there is no sign change')
    end
end
disp('The root is')
disp(xr)
disp('The program ran through this number of iterations')
disp(numiter)
disp('The error is')
disp(ea)
disp('f(x) at the root is')
disp(funcXr)
end

