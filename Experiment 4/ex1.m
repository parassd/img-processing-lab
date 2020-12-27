clc;
clear all;
close all;
A = ones(512,512);
I2 = im2double(A)*127;
G = imnoise (A,'gaussian');
H = imnoise (A,'poisson');
I = imnoise (A,'salt & pepper');
figure
subplot (221)
imshow(I2);
subplot (222)
imshow(G);
subplot (223)
imshow(H);
subplot(224)
imshow (I);
figure
subplot (221)
imhist(I2);
subplot (222)
imhist(G);
subplot (223)
imhist(H);
subplot(224)
imhist (I);