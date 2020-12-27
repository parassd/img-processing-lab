clc;
clear all;
close all;
RGB = imread('len_top.jpg');
I = rgb2gray(RGB);
J = imnoise(I,'gaussian',0,0.005);
F = fft2(J);
K = wiener2(I,[3 3]);
figure, imshow(K), figure, imshow(J)
X = xcorr2(J);
Y = xcorr2(K);
figure, stem(X),figure,stem(Y)