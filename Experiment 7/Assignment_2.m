clc;
clear variables;
close all;
A = zeros(11,11);
A(6,6) = 1;
display(A)
figure
imshow(A)
B = [1 1 1];
I = imdilate(A,B);
display(I)
figure
imshow(I)