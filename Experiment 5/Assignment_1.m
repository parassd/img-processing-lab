clc;
clear all;
close all;
RGB = imread('len_top.jpg');
red = RGB(:,:,1);
green = RGB(:,:,2);
blue = RGB(:,:,3);
a = zeros(size(RGB, 1), size(RGB, 2));
just_red = cat(3, red, a, a);
just_green = cat(3, a, green, a);
just_blue = cat(3, a, a, blue);
figure
subplot(221)
imshow(RGB)
subplot(222)
imshow(just_red)
subplot(223)
imshow(just_green)
subplot(224)
imshow(just_blue)
