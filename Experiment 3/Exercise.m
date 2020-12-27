clc;
clear all;
close all;
RGB = imread('len_top.jpg');
I = rgb2gray(RGB);
J = imnoise(I,'salt & pepper');
peaksnr=psnr(I,J)
%Median filter
MD = medfilt2(J);
%Mean filter
W = fspecial('average', [3 3]);
ME = imfilter(J,W);
%Gaussian filter
G = imgaussfilt(J);
mdsnr = psnr (I,MD)
mesnr = psnr (I,ME)
gsnr = psnr (I,G)
H = padarray(2,[2 2]) - fspecial('gaussian' ,[5 5],2); %Create unsharp mask
E = imfilter(I,H);
figure 
imshow(I)
figure
imshow(E)