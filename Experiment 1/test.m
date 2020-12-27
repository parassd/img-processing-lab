clc
clear all
close all
img = imread('marguerite-daisy-beautiful-beauty.jpg');
figure
subplot(131);
imagesc(img(:,:,1));
title('Red');
subplot(132);
imagesc(img(:,:,2));
title('Green');
subplot(133);
imagesc(img(:,:,3));
title('Blue');
figure
subplot(211);
imshow(img);
title('Normal RGB');
subplot(212);
red_img = double(img);
red_img(:,:,1) = 2*red_img(:,:,1);
red_img = uint8(red_img);
imshow(red_img);
title('Red image');
imwrite(red_img, 'red_flower.png', 'png');
gray = rgb2gray(img);
figure
imhist(gray);
figure
bw_img = im2bw(gray);
subplot(121);
imshow(gray);
title('Input image');
subplot(122);
imshow(bw_img);
title('Binary image');
whos(gray)