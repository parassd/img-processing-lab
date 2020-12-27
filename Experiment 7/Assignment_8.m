clc;
clear variables;
close all;
A = ones(21,21);
A(6:7,5:17) = 0;
A(8:9,12:17) = 0;
A(10:12,7:17) = 0;
A(12:13,12:14) = 0;
B = ones(3,3);
figure
imshow(A)
title('original image');
I = imdilate(A,B);
J = imerode(I,B);
figure
imshow(I)
title('dilation');
figure
imshow(J)
title('erosion');