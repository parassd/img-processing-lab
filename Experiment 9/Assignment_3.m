clc;
clear variables;
close all;
I = imread('labeled_regions_grayscale_01.jpg');
G = rgb2gray(I);
imshow(G);
%Find all the circles with radius r pixels in the range [15, 30].
[centers, radii, metric] = imfindcircles(G,[15 30]);
%Retain the five strongest circles according to the metric values.
centersStrong5 = centers(1:5,:); 
radiiStrong5 = radii(1:5);
metricStrong5 = metric(1:5);
%Draw the five strongest circle perimeters over the original image.
viscircles(centersStrong5, radiiStrong5,'EdgeColor','b');