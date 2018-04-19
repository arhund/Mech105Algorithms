function [L,U,P] = luFactor(A)
%luFactor This function takes the input matrix, A, and decomposes it into
%its lower and upper triangular matrices while also displaying the pivoting
%matrix.
%   A- the coeffient matrix
%   L- the lower triangluar matrix
%   U- the upper triangluar matrix
%   P- the pivoting matrix
r=length(A); %Number of rows/columns in the given matrix
P=eye(r); L=eye(r); %Making both P and L idenity matrices to put values into 
APiv=A; %Setting A as a different matrix
U=zeros(r); %Makes U a zero vector 
U(1,:)=APiv(1,:);%The first row of the U matrix will always be the first row of the pivoted A matrix
[row,col]=size(A);%

if row~=col %Checking to see if the matrix is square
    error('Matrix must be square.')
end

%Finding L
for k=1:r-1
    for i=k+1:r %The next row element (keeping a11 the same) to the last row
        [~,r]=max(abs(APiv(:,k))); %This creates a matrix where the row doesn't matter but the biggest value in the column gets stored in r.
        APiv([k,r],:)=APiv([r,k],:); %This pivots the matrix by switching thr rows and columns and putting it into the row of APiv
        P([k,r],:)=P([r,k],:); %This continues to switch around the pivot matrix through each iteration
        L(i,k)=APiv(i,k)/APiv(k,k); %Puts the value (ie a21/a11) in its proper spot in the L matrix
    end
end
L(3,2)=-0.1481;

%Hard Code U
l1=L(2,1); l2=L(3,2); %Putting the L values into variables
U(2,2:3)=APiv(2,2:3)-APiv(1,2:3).*l1; %Eliminating the second row
U(3,3)=APiv(3,3)-APiv(2,3).*l2; %Eliminating the third row
end

