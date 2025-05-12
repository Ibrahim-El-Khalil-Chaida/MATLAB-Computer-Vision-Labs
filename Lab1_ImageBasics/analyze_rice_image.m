%% Lab 1 – Section C: Analyze 'rice.png'
% Compute histogram, mean intensity, contrast, entropy, and profile.

% Load and convert to double precision
I = im2double(imread('rice.png'));

%% 1. Show image and its histogram
figure('Name','Rice Image & Histogram');
subplot(1,2,1);
imshow(I);
title('rice.png');
subplot(1,2,2);
imhist(I);
title('Histogram of rice.png');
saveas(gcf, '../results/rice_histogram.png');

%% 2. Compute statistics
meanVal    = mean2(I);      % Average intensity
contrastVal= std2(I);       % Standard deviation
entropyVal = entropy(I);    % Image entropy

fprintf('rice.png statistics:\n');
fprintf(' • Mean intensity: %.4f\n', meanVal);
fprintf(' • Contrast      : %.4f\n', contrastVal);
fprintf(' • Entropy       : %.4f\n', entropyVal);

%% 3. Intensity profile across central row
centralRow = round(size(I,1)/2);
figure('Name','Intensity Profile');
improfile(I, [1 size(I,2)], [centralRow centralRow]);
title('Central Row Intensity Profile');
saveas(gcf, '../results/rice_profile.png');
