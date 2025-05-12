function psnr_val = mypsnr(A, B)
% mypsnr  Compute the Peak Signal-to-Noise Ratio between two images.
%   psnr_val = mypsnr(A, B) returns the PSNR in dB for two images A and B
%   assumed to have values in the range [0,1].

    % Mean Squared Error
    mse = mean((A(:) - B(:)).^2);
    % PSNR calculation
    psnr_val = 10 * log10(1 / mse);
end
