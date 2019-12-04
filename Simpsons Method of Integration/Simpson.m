function [I] = Simpson(x, y)
% Numerical evaluation of integral by Simpson's 1/3 Rule
% Inputs
%   x = the vector of equally spaced independent variable
%   y = the vector of function values with respect to x
% Outputs:
%   I = the numerical integral calculated
[ry,cy]=size(y);
[rx,cx]=size(x); %creates a two variables that will determine what "a" and "b" will be
if cy~=cx
    error('Vectors must be the same size')
end
if median(x)~=mean(x)
   error('The sizing must be the same in the X matrix')
end
isodd=mod(cx,2)==1; %Finds whether there is an odd number of intervals
b=x(1,cx);
a=x(1,1);
fx0=y(1,1);
fx2=y(1,cx);
if isodd==0
    warning('This is an odd number so it must use 1/3 rule and the trapezoidal rule')
    y1=((cx))/2;
    %return
    fx1=y(1,y1);
    b1=x(1,cx-1);
    fbx0=y(1,cx-1);
I1=(b1-a)*((fx0+(4*fx1)+fx2)/6);
I2=(b-b1)*((fbx0+fx2)/2);
I=I1+I2;
else 
    x1=(cx+1)/2;
    %return
    fx1=y(1,x1);
  I=(b-a)*((fx0+(4*fx1)+fx2)/6);  
end
end