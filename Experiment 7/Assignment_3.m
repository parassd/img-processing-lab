clc;
clear variables;
close all;
A = zeros(31,31);
A(14:16,15:17)=1;
figure
imshow(A)
B = ones(3,3);
C = ones(3,1);
D = zeros(3,3);
I = imdilate(A,B);
J = imdilate(A,C);
K = imdilate(A,D);
figure
imshow(I)
figure
imshow(J)
figure
imshow(K)