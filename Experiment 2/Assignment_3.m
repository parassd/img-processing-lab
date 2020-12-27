clc;
clear all;
close all;
I=imread('red_flower.png');
G=rgb2gray(I);
figure
subplot(211)
imhist(G)
subplot(212)
imshow(G);
H = histeq(G);
figure
subplot(211)
imhist(H)
subplot(212)
imshow(H)
J=imadjust(G);
figure
subplot(211)
imhist(J)
subplot(212)
imshow(J)