clc;
clear all;
close all;
RGB = imread('len_top.jpg');
I = rgb2gray(RGB);
J = imnoise(I,'gaussian');
LEN = 31;
THETA = 11;
PSF = fspecial('motion',LEN,THETA); % create PSF
Blurred = imfilter(I,PSF,'circular','conv');
figure; imshow(Blurred); title('Blurred (degradation without noise) Image');
figure; imshow(J); title('Gaussian Noise (degradation with noise)');
err = mean2((I-J).^(2))