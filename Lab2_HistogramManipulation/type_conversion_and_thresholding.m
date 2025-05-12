%% Lab 2 – Part A: Type Conversion & Binarization
% A.1 Convert RGB image to double, display channels & histograms, then grayscale conversion.
% A.2 Threshold a grayscale image to obtain a binary mask.

% ------------- A.1 RGB → Grayscale and Channel Analysis -------------
% Load color image and convert to double
I_rgb = im2double(imread('coloredChips.png'));

% Preallocate grayscale
I_gray = rgb2gray(I_rgb);

% Create a 3×3 grid: original, R, hist(R), G, hist(G), B, hist(B), gray, hist(gray)
figure('Name','RGB Channels & Histograms');
chanNames = {'Red','Green','Blue','Grayscale'};
colors    = {[1 0 0],[0 1 0],[0 0 1],[.5 .5 .5]};  % for display

% 1) Original color image
subplot(3,3,1);
imshow(I_rgb);
title('Original RGB Image');

% 2–7) Each channel and its histogram
for k = 1:3
    ch = I_rgb(:,:,k);
    subplot(3,3,1+2*k);
    imshow(ch);
    title([chanNames{k}, ' Channel']);
    subplot(3,3,2+2*k);
    imhist(ch);
    title([chanNames{k}, ' Histogram']);
end

% 8–9) Grayscale image & its histogram
subplot(3,3,8);
imshow(I_gray);
title('Converted Grayscale');
subplot(3,3,9);
imhist(I_gray);
title('Grayscale Histogram');

% Save grayscale image
imwrite(I_gray, '../results/image_ng.png');

% ------------- A.2 Grayscale Thresholding -------------
% Load grayscale image and convert to double
I2 = im2double(imread('eight.tif'));

% Display image + histogram side by side
figure('Name','Thresholding eight.tif');
subplot(1,2,1);
imshow(I2);
title('eight.tif (double)');
subplot(1,2,2);
imhist(I2);
title('Histogram of eight.tif');
saveas(gcf, '../results/eight_histogram.png');

% Choose a threshold (manually determined)
threshold = 0.5;
BW = im2bw(I2, threshold);

% Display and save binary result
figure('Name','Binary Thresholding');
imshow(BW);
title(sprintf('Binary Image at Threshold = %.2f', threshold));
imwrite(BW, '../results/eight_binary.png');
