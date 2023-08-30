% Read an RGB image
rgbImage = imread('10.jpg');

% Convert RGB image to HSV color space
hsvImage = rgb2hsv(rgbImage);

% Extract the V channel (Value channel)
vChannel = hsvImage(:, :, 3);

% Set the threshold value (adjust as needed)
thresholdValue = 0.5;

% Apply thresholding to the V channel
binaryMask = vChannel >= thresholdValue;

% Display the original image
imshow(1-binaryMask);
title('Binary Mask (V Thresholded)');
