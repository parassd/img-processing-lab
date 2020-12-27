clc;
clear all;
close all;
input = imread('len_top.jpg');
s = rgb2hsv(input);
Inverted=1-s;
figure
imshow(s),title('Original HSV Image')
figure
imshow(Inverted),title('Inverted Image')
J = imadjust(s,[.2 .3 0; .6 .7 1],[]);
figure
subplot(311) 
imhist(J(:,:,1)), title('Red imadjust-ed') 
subplot(312)
imhist(J(:,:,2)), title('Blue imadjust-ed')
subplot(313)
imhist(J(:,:,3)), title('Green imadjust-ed')
figure
imshow(J),title('Using Imadjust')
G = imgaussfilt(s);
figure
imshow(G),title('Gaussian Filter')
InvertedRGB = hsv2rgb(Inverted);
figure
imshow(InvertedRGB),title('Inverted RGB')
JRGB=hsv2rgb(J);
figure
imshow(JRGB),title('imadjust RGB')
GRGB=hsv2rgb(G);
figure
imshow(GRGB),title('Gaussian Filter RGB')