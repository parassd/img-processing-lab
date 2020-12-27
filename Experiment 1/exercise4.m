clc;
clear all;
close all;
im=logical(zeros(256,256));
im(128,128)=1;  %make the centre pixel white
figure
imshow(im);