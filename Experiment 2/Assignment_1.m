clc;
clear all;
close all;
I=imread('red_flower.png');
G=rgb2gray(I);
Inverted=255-G;
figure
imshow(G)
figure
imshow(Inverted)