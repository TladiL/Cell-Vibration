% % Read the guided image and the input image
% Cv = imread('guided_image.jpg');
% Wr = imread('input_image.jpg');
% 
% % Convert the images to double precision (if not already)
% Cv = im2double(Cv);
% Wr = im2double(Wr);

% Set the parameters
w = 3;    % Window size
r = 0.1;  % Regularization parameter
eta = 0.004; % Parameter influencing the filter

% Apply the guided filter
outputImage = imguidedfilter(Wr, Cv);

% Display the original and filtered images
imshow(1-outputImage);
title('Guided Filtered Image');
