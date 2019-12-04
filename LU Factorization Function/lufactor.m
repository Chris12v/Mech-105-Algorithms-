function [L, U, P] = lufactor(A)
% luFactor(A)
if ismatrix(A)==0
    error('Entry must be a 2D matrix')
end
if nargin~=1
    error('Only enter one matrix')
end 
if size(A,1)~=size(A,2)
    error('Must be a square matrix')
end
%Pivot Section
[m,n]=size(A);
I=eye(m);
L=I;
P=eye(m);   
U=A;
for iter=1:n
    [Max,column]=max(abs(U((iter:n),iter)));
    c=find(U(:,iter)==Max);
    U([iter,c],:)=U([c,iter],:);
    P([iter,c],:)=P([c,iter],:);
end
U
L(2,1)=(U(2,1)/U(1,1))
k=2;d=1;
for f=1:n-1
    L(k,d)=(U(k,d)/U(d,d))
    U(k,:)=U(k,:)-(((U(k,d)/U(d,d))*U(d,:)))
    while d<=k-1
        %L(k,d)=(U(k,d)/U(d,d))
    U(k,:)=U(k,:)-(((U(k,d)/U(d,d))*U(d,:)))
    d=d+1
    L(k,d)=(U(k,d)/U(d,d))
    end
  d=1
  k=k+1
end  
    
%	LU decomposition with pivotiing
% inputs:
%	A = coefficient matrix
% outputs:
%	L = lower triangular matrix
%	U = upper triangular matrix
%       P = the permutation matrix
 
end