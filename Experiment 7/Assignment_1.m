clc;
clear variables;
close all;
A = zeros(10,10);
A(5,5) = 1;
display(A)
B=[1 1 1;1 1 1; 1 1 1];
C=padarray(A,[1 1]);
D = false(size(A));
for i = 1:9
    for j = 1:9
        D(i,j)=sum(sum(B&C(i:i+2,j:j+2)));
    end
end
display(D)