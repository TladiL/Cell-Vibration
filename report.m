% Image Enhancement Good Quality MatrixO
OGimage = I;
OGimageD = double(I);

DisImageD = double(F);
DisImage = img_uint8;
% Culculating The NIQE Score
niqe_score(DisImageD);

% Calculating The BRISQUE Score
brisque_score(DisImageD);

% Calulating The SSIM Score
ssim_score(DisImageD, OGimageD);

% Calculating The PSNR Score
psnr_score(DisImageD,OGimageD);

% Calculating The ILNIQE Score
ilniqe(DisImageD,OGimageD);

fprintf('\n');