clc;
clear all;
close all;
I=imread('red_flower.png');
G=rgb2gray(I);
r = double(G)/255;              % normalise the image
c =1.5;
gamma=[0.5,1.5,3];              % to make image dark take value of gamma > 1, to make image bright take vlue of gamma < 1
s1=(c*(r)).^gamma(1);
s2=(c*(r)).^gamma(2);
s3=(c*(r)).^gamma(3);
figure
subplot(2,2,1),imshow(uint8(G)),title('Original Image');
subplot(2,2,2),imshow(s1),title('Power Law Transformed Image for gamma=0.5');
subplot(2,2,3),imshow(s2),title('Power Law Transformed Image for gamma=1.5');
subplot(2,2,4),imshow(s3),title('Power Law Transformed Image for gamma=3');
