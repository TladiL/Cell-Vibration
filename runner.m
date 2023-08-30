% Clear Catch and all history
clear; clc;

%   Load Load The Input Image
I = imread('01.jpg');
% I = imresize(I, 0.5);

subplot(2,2,1);
imshow(I);
title('Original');

fprintf('Cell Vibration\n');
run('main.m');

fprintf('Gamma Correction\n');
run('gammaCorrection.m');

fprintf('Histogram Eqalization\n');
run('pairWiseComplemenatryGamma.m');