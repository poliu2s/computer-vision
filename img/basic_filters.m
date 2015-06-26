% Playing around with filters
% Po Liu

% Load the png
I = imread('/Users/poliu/projects/computer-vision/img/CameraMan.png');
imshow(I);

% Gaussian filter
H = fspecial('gaussian', 5, 100);
GaussianFilter = imfilter(I,H,'replicate');
imshow(GaussianFilter);
