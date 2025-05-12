%% Lab 1 – Section A: Create Synthetic Images
% Generate and save binary, grayscale, and RGB patterns.

% Parameters
rows = 100;
cols = 140;

%% 1. Binary Checkerboard (2×2 blocks)
halfR = rows/2;
halfC = cols/2;
% Assemble 2×2 checkerboard of 0s and 1s
patternBin = [zeros(halfR, halfC), ones(halfR, halfC);
              ones(halfR, halfC), zeros(halfR, halfC)];
figure('Name','Binary Checkerboard');
imshow(patternBin);
title('2×2 Binary Checkerboard');
imwrite(patternBin, '../results/pattern_binary.png');

%% 2. Horizontal Grayscale Gradient (0→1)
gradientGray = repmat(linspace(0,1,256), rows, 1);
figure('Name','Grayscale Gradient');
imshow(gradientGray);
title('Horizontal Grayscale Gradient');
imwrite(gradientGray, '../results/pattern_gradient.png');

%% 3. RGB Checkerboard (2×2 colored blocks)
% Define blocks: red, green, blue, white
blockSize = [rows/2, cols/2, 3];
R = repmat(reshape([1,0,0],1,1,3), blockSize);
G = repmat(reshape([0,1,0],1,1,3), blockSize);
B = repmat(reshape([0,0,1],1,1,3), blockSize);
W = repmat(reshape([1,1,1],1,1,3), blockSize);

patternRGB = [R, G;
              B, W];
figure('Name','RGB Checkerboard');
imshow(patternRGB);
title('2×2 RGB Checkerboard');
imwrite(patternRGB, '../results/pattern_rgb.png');
