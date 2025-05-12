%% Lab 2 – Part B: Histogram Normalization & Equalization
% B.1 Load, convert & compute stats on a grayscale image.
% B.2 Normalize histogram via imadjust.
% B.3 Equalize histogram via histeq.

% ------------- B.1 Load & Analyze Original Image -------------
I1 = im2double(rgb2gray(imread('office_1.jpg')));

figure('Name','Original Grayscale & Histogram');
subplot(1,2,1);
imshow(I1);
title('office\_1.jpg Grayscale');
subplot(1,2,2);
imhist(I1);
title('Histogram of Original');
saveas(gcf, '../results/office_original.png');

% Compute luminance and contrast
L1 = mean2(I1);
C1 = std2(I1);
fprintf('Original: Luminance = %.4f, Contrast = %.4f\n', L1, C1);

% ------------- B.2 Histogram Normalization (imadjust) -------------
T1 = imadjust(I1);

figure('Name','Normalized & Histogram');
subplot(1,2,1);
imshow(T1);
title('Normalized Image (imadjust)');
subplot(1,2,2);
imhist(T1);
title('Histogram after Normalization');
saveas(gcf, '../results/office_normalized.png');

L2 = mean2(T1);
C2 = std2(T1);
fprintf('Normalized: Luminance = %.4f, Contrast = %.4f\n', L2, C2);

% ------------- B.3 Histogram Equalization (histeq) -------------
T2 = histeq(I1);

figure('Name','Equalized & Histogram');
subplot(1,2,1);
imshow(T2);
title('Equalized Image (histeq)');
subplot(1,2,2);
imhist(T2);
title('Histogram after Equalization');
saveas(gcf, '../results/office_equalized.png');

L3 = mean2(T2);
C3 = std2(T2);
fprintf('Equalized: Luminance = %.4f, Contrast = %.4f\n', L3, C3);

% Summary of luminance & contrast evolution
fprintf('\nSummary:\nOriginal  → L = %.4f, C = %.4f\n', L1, C1);
fprintf('Normalized→ L = %.4f, C = %.4f\n', L2, C2);
fprintf('Equalized → L = %.4f, C = %.4f\n', L3, C3);
