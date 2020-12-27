clc;
clear all;
close all;
K = ones(100,35).*128;
L = ones(100,30).*64;
M = ones(100,20).*32;
N = ones(100,10).*16;
O = ones(100,5).*8;
I = [K L M N O];
figure
imshow(uint8(I));