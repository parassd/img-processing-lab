clc;
clear all;
close all;
RGB = imread('len_top.jpg');
I = rgb2gray(RGB);
J = imnoise(I,'gaussian');
LEN = 21;
THETA = 11;
PSF = fspecial('motion', LEN, THETA);
figure, imshow(J)
title('Adding gaussian noise')
figure, imshow(I)
estimated_nsr = 0;
wnr2 = deconvwnr(J, PSF, estimated_nsr);
figure, imshow(wnr2)
title('Restoration of Noisy Image Using NSR = 0')
figure
X = xcorr2(J);
stem(X)
figure
Y = xcorr2(wnr2);
stem(Y)