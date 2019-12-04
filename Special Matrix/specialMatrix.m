function [A] = specialMatrix(n,m)
%specialMatrix.m
%Created on 9/14/2019
%Created by Christian Hanson
%Last modified 9/16/2019
%Desription: This is a function that when you plug in a row and column
%value it calculates the row value with the column value below and to the
%left
%Inputs: n,m
if nargin <2 || nargin>2
    error('Enter Row and then column')
end
k=1;L=1;b=2;a=1;c=1;d=1;A=[0 ;0 ];
for i=1:m
    A(1,k)=n-n+k;
k=k+1;
end
for j=1:n
    A(L,1)=m-m+L
    L=L+1;
end
for v=1:n-1
for u=1:n
    a=a+1;
        A(b,a)=A(d,a)+A(b,c)
    c=c+1;
end
a=1; c=1;
b=b+1;d=d+1;
end
    
   
% Now the real challenge is to fill in the correct values of A

end
% Things beyond here are outside of your function
