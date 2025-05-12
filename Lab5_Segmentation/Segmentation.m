%% Lab 5 – Region Segmentation & Mathematical Morphology
% PART A: LOAD, ADD NOISE & PREPROCESS
% PART B: SIMPLE & OTSU THRESHOLDING
% PART C: MORPHOLOGICAL CLEANUP & LABELING

%% PART A: LOAD & NOISE
% 1. Load grayscale image and convert to double
Ing = im2double(imread('eight.tif'));

% 2. Add salt & pepper noise (2% density)
Ib = imnoise(Ing, 'salt & pepper', 0.02);

% 3. Apply Gaussian filter (5×5, σ=1.0)
hGauss = fspecial('gaussian', [5 5], 1.0);
If = imfilter(Ib, hGauss, 'replicate');

% 4. Display filtered image and histogram; count histogram modes
figure('Name','Filtered Image & Histogram');
subplot(1,2,1);
imshow(If);
title('Filtered Image (If)');
subplot(1,2,2);
[counts, binLocations] = imhist(If);
bar(binLocations, counts);
title('Histogram of If');
xlabel('Intensity'); ylabel('Count');

% Estimate number of modes via peak finding
[pks, locs] = findpeaks(counts, 'MinPeakProminence', 0.05*max(counts));
numModes = numel(pks);
fprintf('Estimated number of histogram modes: %d\n', numModes);
saveas(gcf, '../results/filtered_histogram.png');

%% PART B: THRESHOLDING
% 1. Manual threshold S1
S1 = 0.5;
IB1 = imbinarize(If, S1);

% 2. Otsu threshold S2
S2 = graythresh(If);
IB2 = imbinarize(If, S2);

% Display binary results
figure('Name','Thresholding Results');
subplot(1,2,1);
imshow(IB1);
title(sprintf('Manual Threshold (S1=%.2f)', S1));
subplot(1,2,2);
imshow(IB2);
title(sprintf('Otsu Threshold (S2=%.2f)', S2));
saveas(gcf, '../results/thresholding.png');

%% PART C: MORPHOLOGY & LABELING
% 1. Morphological opening then closing to clean IB2
se = strel('disk', 2);
Iopen  = imopen(IB2, se);
Iseg    = imclose(Iopen, se);

% 2. Label connected components
[L, numObjects] = bwlabel(Iseg);
RgbLabel = label2rgb(L, 'jet', 'k', 'shuffle');

% 3. Display segmentation & labeling
figure('Name','Morphological Segmentation & Labeling');
subplot(1,3,1);
imshow(IB2);
title('Binary (Otsu)');
subplot(1,3,2);
imshow(Iseg);
title('After Morphology');
subplot(1,3,3);
imshow(RgbLabel);
title(sprintf('Labeled Objects: %d', numObjects));

% Output object count
fprintf('Number of objects detected: %d\n', numObjects);

% Save final labeled image
imwrite(RgbLabel, '../results/labeled_objects.png');
