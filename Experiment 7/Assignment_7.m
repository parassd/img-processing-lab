clc;
clear variables;
close all;
A = zeros(31,31);
A(13:17,14:18)=1;
B = ones(3,3);
figure
imshow(A)
I = imdilate(A,B);
J = imerode(I,B);
figure
imshow(I)
figure
imshow(J)