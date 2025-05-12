%% Lab 3 – Denoising with 2D Linear Filters & PSNR Evaluation
% Main script: add noise, apply filters, plot profiles, compute PSNR.

% PART A: LOAD & NOISE
% Load reference image from MATLAB imdemos and convert to double grayscale
Iref = im2double(rgb2gray(imread('eight.tif')));

% Add salt & pepper noise (2% density)
Ib1 = imnoise(Iref, 'salt & pepper', 0.02);

% Add Gaussian noise (mean 0, variance 0.002)
Ib2 = imnoise(Iref, 'gaussian', 0, 0.002);

% Display reference and noisy images
figure('Name','Reference & Noisy Images');
subplot(1,3,1), imshow(Iref), title('Reference (Iref)');
subplot(1,3,2), imshow(Ib1), title('Salt & Pepper (Ib1)');
subplot(1,3,3), imshow(Ib2), title('Gaussian (Ib2)');
saveas(gcf, '../results/partA_noisy.png');

% PART B: FILTER DESIGN & APPLICATION
% Create a 5×5 averaging filter and a 5×5 Gaussian filter (σ=0.8)
FM = fspecial('average', [5 5]);
FG = fspecial('gaussian', [5 5], 0.8);

% Filter the salt & pepper noisy image
IFM1 = imfilter(Ib1, FM, 'replicate');
IFG1 = imfilter(Ib1, FG, 'replicate');

% Display results for Ib1
figure('Name','Filtering Salt & Pepper Noise');
subplot(1,3,1), imshow(Ib1), title('Noisy Ib1');
subplot(1,3,2), imshow(IFM1), title('Mean Filter on Ib1');
subplot(1,3,3), imshow(IFG1), title('Gaussian Filter on Ib1');
saveas(gcf, '../results/filter_Ib1.png');

% Filter the Gaussian noisy image
IFM2 = imfilter(Ib2, FM, 'replicate');
IFG2 = imfilter(Ib2, FG, 'replicate');

% Display results for Ib2
figure('Name','Filtering Gaussian Noise');
subplot(1,3,1), imshow(Ib2), title('Noisy Ib2');
subplot(1,3,2), imshow(IFM2), title('Mean Filter on Ib2');
subplot(1,3,3), imshow(IFG2), title('Gaussian Filter on Ib2');
saveas(gcf, '../results/filter_Ib2.png');

% PART C1: VISUAL EVALUATION WITH INTENSITY PROFILES
row = round(size(Iref,1)/2);

% Profiles for salt & pepper case
pI = improfile(Iref, [1 size(Iref,2)], [row row]);
p1 = improfile(Ib1,  [1 size(Ib1,2)],  [row row]);
p2 = improfile(IFM1, [1 size(IFM1,2)], [row row]);
p3 = improfile(IFG1, [1 size(IFG1,2)], [row row]);

figure('Name','Profiles: Salt & Pepper Filtering');
plot(pI,'LineWidth',1.5); hold on;
plot(p1,'LineWidth',1.5);
plot(p2,'LineWidth',1.5);
plot(p3,'LineWidth',1.5);
legend('Iref','Ib1','IFM1','IFG1','Location','Best');
title('Intensity Profiles – Salt & Pepper Case');
xlabel('Pixel Index'); ylabel('Intensity');
saveas(gcf, '../results/profile_SP.png');

% Profiles for Gaussian noise case
p1g = improfile(Ib2,  [1 size(Ib2,2)],  [row row]);
p2g = improfile(IFM2, [1 size(IFM2,2)], [row row]);
p3g = improfile(IFG2, [1 size(IFG2,2)], [row row]);

figure('Name','Profiles: Gaussian Filtering');
plot(pI,'LineWidth',1.5); hold on;
plot(p1g,'LineWidth',1.5);
plot(p2g,'LineWidth',1.5);
plot(p3g,'LineWidth',1.5);
legend('Iref','Ib2','IFM2','IFG2','Location','Best');
title('Intensity Profiles – Gaussian Case');
xlabel('Pixel Index'); ylabel('Intensity');
saveas(gcf, '../results/profile_G.png');

% PART C2: PSNR COMPUTATION
% Compute PSNR between reference and each filtered image
psnr_FM1 = mypsnr(Iref, IFM1);
psnr_FG1 = mypsnr(Iref, IFG1);
psnr_FM2 = mypsnr(Iref, IFM2);
psnr_FG2 = mypsnr(Iref, IFG2);

% Display PSNR values
fprintf('PSNR(Iref, IFM1) = %.2f dB\n', psnr_FM1);
fprintf('PSNR(Iref, IFG1) = %.2f dB\n', psnr_FG1);
fprintf('PSNR(Iref, IFM2) = %.2f dB\n', psnr_FM2);
fprintf('PSNR(Iref, IFG2) = %.2f dB\n', psnr_FG2);

% Save PSNR table
T = table(...
    ["IFM1"; "IFG1"; "IFM2"; "IFG2"], ...
    [psnr_FM1; psnr_FG1; psnr_FM2; psnr_FG2], ...
    'VariableNames', {'Filter','PSNR_dB'});
writetable(T, '../results/psnr_results.csv');
