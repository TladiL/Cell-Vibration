% I = imresize(I, 0.5);
% Set the parameters
gamma = 0.4;
lambda = 2;
thresholdValue = 0.5;
% Set the parameters

%   Convert the image to double to prepare for calculation
%   Nomalize the Image to 1 - the intesity levels will rainge as [0 - 1]
%   Devide the Each intesity level by 255
II = im2double(I);

%   This section computes the Energy Model
E = imageEnergy(II, lambda);
C = gammaCorrect(II, gamma, E/5, lambda);

Wr = segmentation(I, thresholdValue);

% Extract the V channel (Value channel)
Cv = channelV(C);
    
% Apply the guided filter
Wf = imguidedfilter(Wr, Cv);

% The fussion of the model
F = (Wf.*C + (1-Wf).*II);

subplot(2,2,2);
imshow(F);
title('Main');

img_uint8 = uint8(F*255);
backToJpeg(img_uint8);

run('report.m');