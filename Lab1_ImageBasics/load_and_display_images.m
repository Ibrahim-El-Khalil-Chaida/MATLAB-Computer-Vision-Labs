%% Lab 1 – Section B: Load and Display Demo Images
% Read built-in demo images, display metadata, montage, and histograms.

% List of demo files (must be in current folder or path)
files = {'circles.tif', 'rice.png', 'coloredchips.png'};

%% 1. Display file metadata
fprintf('--- Image Metadata ---\n');
for k = 1:numel(files)
    info = imfinfo(files{k});
    fprintf('%s: %d×%d pixels, %d-bit, %s\n', ...
        files{k}, info.Width, info.Height, info.BitDepth, info.ColorType);
end

%% 2. Montage display
figure('Name','Demo Images Montage');
for k = 1:3
    I = imread(files{k});
    subplot(1,3,k);
    imshow(I);
    title(files{k}, 'Interpreter','none');
end
saveas(gcf, '../results/demo_montage.png');

%% 3. Individual histograms
figure('Name','Intensity Histograms');
for k = 1:3
    I = imread(files{k});
    subplot(3,1,k);
    if size(I,3)>1
        I = rgb2gray(I);
    end
    imhist(I);
    title(['Histogram of ', files{k}], 'Interpreter','none');
end
saveas(gcf, '../results/demo_histograms.png');
