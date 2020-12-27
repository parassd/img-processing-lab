clc;
clear all;
close all;
RGB = imread('len_top.jpg');
I = rgb2gray(RGB);
H = fspecial('gaussian',[3,3],1);
C = imfilter(I,H);
figure
imshow(C)
figure
imshow(I)