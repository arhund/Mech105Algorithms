function [root,fx,ea,iter] = bisect(func,xl,xu,maxit,varargin)
%This fuction uses the bisection meathod to find the roots of an inputted
%equation
%   Inputs:
%       func: the function being evaluated
%       xl,xu: lower and upper guesses for the bisection
%       maxit: maximum allowed iterations
%   Outputs:
%       root:the estimated root by the function
%       fx: the value of the equation at the root
%       ea: the amount of error (realitive)
%       iter: the number of iterations that it took 
if nargin<3
    error('You must have at least 3 inputs for this function to run.')
end
%this insures that there is enough variables to allow the function to run.
test=func(xl,varargin{:})*func(xu,varargin{:});
%this multiples the value that is given at xl and xu to see if there is a
%sign change
if test>0
    error('There is no sign change, please pick another set of bracket points')
end
%if there is no sign change there is no root between the points.
if nargin<4||isempty(es)
    es=0.0001;
end
%this assigns the absolute percent error to es if the user did not specify
if nargin<5||isempty(maxit)
    maxit=50;% the max number of itereations is already set to 50 if the user does not specify
end

iter=0; xr=xl; ea=100;
while(1) %the loop runs until this isnt true anymore
    xrold=xr; %xr is the root
    xr=(xl+xu)/2; %the midpoint between the points
    iter=iter+1; %numbers how many iterations that we go through
    if xr~=0
        ea=abs(((xr-xrold)/xr))*100;%equation for approximate relitive error
    end
    test=func(xl,varargin{:})*func(xu,varargin{:});
    if test<0
        xu=xr;
    elseif test>0
        xl=xr;
    else
        ea=0; %the error is zero if test=0
    end
    if ea<=es|| iter>=maxit %stopping criterion 
        break
    end
end
    root=xr %displays the root
    fx=func(xr,varargin{:}) %displays the f(root)
end

