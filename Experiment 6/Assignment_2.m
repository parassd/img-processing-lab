clc; clear all; close all;
F = [180 160 94 153 194 163 132 165;
    183 153 116 176 187 166 130 169;
    179 168 171 182 179 170 131 167;
    177 177 179 177 179 165 131 167;
    178 178 179 176 182 164 130 171;
    179 180 180 179 183 164 130 171;
    179 179 180 182 183 170 129 173;
    180 179 181 179 181 170 130 169]
G = F-128.*ones(8,8);
I = dct2(G);
Q = [16 11 10 16 24 40 51 61;
    12 12 14 19 26 58 60 55;
    14 13 16 24 40 57 69 56;
    14 17 22 29 51 87 80 62;
    18 22 37 56 68 109 103 77;
    24 35 55 64 81 104 113 92;
    49 64 78 87 103 121 120 101;
    72 92 95 98 112 100 103 99];
Qnew = I/Q;
Zigzagcoeff = [20 -31 3 2 -5 44 -18 -5 -4 1 0 -2 -3 1 -32 -65 5 0 -2 1 0 -1 1 -1 0 3 5 139 -64 -9 2 1 0 0 1 0 0 0 0 1 2 -4 4 1 -2 2 0 0 1 0 0 0 -3 1 0 0 0 -1 -1 0 1 2 -1];
K = Q*Qnew;
R = idct2(K)