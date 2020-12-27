clc;
clear all;
close all;
X = uint8([ 45 40 50 60 30 70 45 0 62 255 100 255 0 75; 60 30 70 45 255 100 44 225 100 35 20 78 90 100]);
Y = uint8([ 0 1 1 0 1 0 1 1 1 1 1 0 0 0; 0 1 1 0 0 0 0 1 0 1 1 1 1 1]);
A = imadd(X,Y);
B = imsubtract(X,Y);
C = immultiply (X,Y);
figure
subplot (311)
imshow(A);
subplot (312)
imshow(B);
subplot (313)
imshow(C);
