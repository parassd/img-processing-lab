clc;
clear all;
close all;
I=imread('red_flower.png');
G=rgb2gray(I);
figure
imhist(G);
figure
imshow(G)