clc;
clear all;
close all;
RGB = imread('len_top.jpg');
I = rgb2gray(RGB);
U = fft2(I);
H = fspecial('gaussian',[225,400],1);
V = fft2(H);
C = U.*V;
Y = ifft2(C);
figure
imshow(I)
figure
imshow(C)