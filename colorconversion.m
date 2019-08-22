function [RGB, YCBCR, RGB2] = colorconversion()

load clown.mat 

[a, b] = size(X); 

% converting gray-level image and colormap into RGB image

RGB = zeros(200,320,3); 
for n=1:a 
    for m= 1:b
        RGB(n,m,:) = map(X(n,m), :); 
    end 
end 

% converting RGB values to values of digital video color space 

YCBCR = zeros(200, 320, 3); 

M = [ 76.544 150.272 29.184; -43.027 -84.471 127.498;  127.498 -106.764 -20.734]; 
for n = 1:a 
    for m = 1:b 
        YCBCR(n,m,:) = 1/256*M*squeeze(RGB(n,m, :)); 
    end 
end 


% converting digital video color space values back to RGB values

RGB2= zeros(200,320, 3); 

M2 = [256 0 357.510; 256 -87.755 -182.105; 256 451.860 0]; 
for n =1:a 
    for m = 1:b 
        RGB2(n,m,:) = 1/256*M2*squeeze(YCBCR(n,m,:)); 
    end 
end 
RGB2(RGB2<0) = 0; 
RGB2(RGB2>1) =1; 

% scaling negative values to positive 
YCBCR(:, :, 2) = YCBCR(:, :, 2)+.5; 
YCBCR(:, :, 3) = YCBCR(:, :, 3)+.5; 

% Replacing values otuside the range [0, 1]

YCBCR(YCBCR>1)=1; 
YCBCR(YCBCR<0) =0; 

figure(1) 
subplot(221)
imagesc(X); 
subplot(222)
imagesc(RGB);
subplot(223)
imagesc(YCBCR); 
subplot(224); 
imagesc(RGB2);
end





