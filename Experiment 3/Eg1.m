clc;
clear all;
close all;
RGB = imread('len_top.jpg');
I = rgb2gray(RGB);
M = (1/9).*[1 1 1;1 1 1;1 1 1];
C = imfilter (I,M,'conv');
figure
imshow (C);
figure
imshow(I);