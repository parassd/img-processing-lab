clc;
clear all;
close all;
input = imread('len_top.jpg');
s = rgb2hsv(input);
figure
subplot(311) 
imhist(s(:,:,1)), title('Red') 
subplot(312)
imhist(s(:,:,2)), title('Blue')
subplot(313)
imhist(s(:,:,3)), title('Green')