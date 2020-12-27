clc;
clear variables;
close all;
A = zeros(10,10);
A(5,5) = 1;
display(A)
B=[1 1 1];
C=padarray(A,[0 1],1);
D = false(size(A));
for i=1:size(C,1)
    for j=1:size(C,2)-2
        In=C(i,j:j+2);
        %Find the position of ones in the structuring element
        In1=find(B==1);
        %Check whether the elements in the window have the value one in the
        %same positions of the structuring element
        if(In(In1)==1)
        D(i,j)=1;
        end
    end
end
display(D)
figure
imshow(A)
figure
imshow(D)