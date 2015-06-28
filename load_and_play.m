% Load the time-lapse images and play

% Parameters
rootDir = '/Users/poliu/Desktop/CV/C2C12_100709F0005-7/';

% Get the number of files in this time lapse
directoryList = dir(strcat(rootDir,'exp1_F0005 Data'));
imgList = directoryList(not([directoryList.isdir]));
numFiles = length(imgList);

% Create an array to hold them
I = imread(strcat(rootDir,'exp1_F0005 Data/',imgList(1).name));
Size = size(I);
imgHeight = Size(1);
imgWidth = Size(2);

timeLapse = zeros(imgHeight, imgWidth, numFiles);

% Compose the time lapse images together
for i = 1:numFiles
   timeLapse(:,:,i) = imread(strcat(rootDir,'exp1_F0005 Data/',imgList(i).name));
end