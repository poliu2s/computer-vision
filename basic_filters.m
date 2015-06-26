% Playing around with filters
% Po Liu

% Load the png
I = imread('CameraMan.png');
imshow(I);

% Gaussian filter
H = fspecial('gaussian', 5, 100);
GaussianFilter = imfilter(I,H,'replicate');
imshow(GaussianFilter);
