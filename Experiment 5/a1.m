clc;
clear all;
close all;
RGB = imread('len_top.jpg');
figure, imshow(RGB)
red = RGB(:,:,1);
green = RGB(:,:,2);
blue = RGB(:,:,3);
figure
imshow(green)
