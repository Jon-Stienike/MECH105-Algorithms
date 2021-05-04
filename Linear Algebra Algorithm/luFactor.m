function [L, U, P] = luFactor(A)
% luFactor(A)
%	LU decomposition with pivotiing
% inputs:
%	A = coefficient matrix
% outputs:
%	L = lower triangular matrix
%	U = upper triangular matrix
%   P = the permutation matrix
[r,c] = size(A);

L = eye(r,c);
P = eye(r,c);
U = A;
Pch = P;

if r~=c
    error('Must be a square matrix')
end

for k = 1:r-1
    [temp, idx] = max(abs(A(k:r,k)));
    
    for j = k:r
         if temp == abs(U(j,k))
             U(k,:) = A(j,:);
             U(j,:) = A(k,:);
             
             P(k,:) = Pch(j,:);
             P(j,:) = Pch(k,:);
         end
    end
     
    for i = k+1:r
        ratio = U(i,k)/U(k,k);
        U(i,:) = U(i,:)-ratio*U(k,:);
        L(i,k) = ratio;
    end
end
end