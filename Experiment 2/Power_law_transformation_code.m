clc;
clear all;
close all;
I=imread('red_flower.png');
G=rgb2gray(I);
figure
imshow(G);
G=double(G);
figure
imshow(G/255);
[rowi,coli]=size(G);
r=0:1:255
gamma=0.5;
c=1.5;
s=c*r.^gamma;
out=zeros(rowi,coli);
figure
plot(r,s);
for k=1:256
    for i=1:rowi
        for j=1:coli
if G(i,j)==r(k) 
    out(i,j)=s(k);
% else
%     break
end
        end
    end
end
% out
figure
imshow(uint8(out));
% figure,imshow(out/255)