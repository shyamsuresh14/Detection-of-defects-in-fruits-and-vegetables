ai = imread('a5.jpg');
mi=imread('mango_infected.png');
m4=imread('m4.PNG');

img = imread('potato.png');
type = 'a'; 
[L, Centers] = imsegkmeans(img, 3);
B = labeloverlay(img,L);
rgbImage = B;
% Display the original image.
subplot(4, 5, 1);
imshow(rgbImage);
title('Original Image(Potato)');
% Split the original image into color bands.
redBand = rgbImage(:,:, 1);
greenBand = rgbImage(:,:, 2);
blueBand = rgbImage(:,:, 3);
% Threshold each color band.
redthreshold = 100;
greenThreshold = 140;
blueThreshold = 170;
redMask = (redBand < redthreshold);
greenMask = (greenBand > greenThreshold);
blueMask = (blueBand < blueThreshold);
% Combine the masks to find where all 3 are "true."
damagedAreasMask = uint8(redMask & greenMask & blueMask);
subplot(4, 5, 2);
imshow(damagedAreasMask, []);
title('Damaged Areas Mask');
maskedrgbImage = uint8(zeros(size(damagedAreasMask))); % Initialize
maskedrgbImage(:,:,1) = rgbImage(:,:,1) .* damagedAreasMask;
maskedrgbImage(:,:,2) = rgbImage(:,:,2) .* damagedAreasMask;
maskedrgbImage(:,:,3) = rgbImage(:,:,3) .* damagedAreasMask;
reqInfo = maskedrgbImage(:, :, 1) > 0 & maskedrgbImage(:, :, 2) > 0 & maskedrgbImage(:, :, 3) > 0;
res = sum(reqInfo(:));
disp(res)
t = 10000;
if type=='b'
    t = 5000;
end
if res>t
    subplot(4, 5, 3);
    imshow(maskedrgbImage);
    title('Result: Infected');
else
    subplot(4, 5, 3);
    imshow(maskedrgbImage);
    title('Result: Good');
end  

%=================================================================================%

img = imread('good_potato.jpg');
[L, Centers] = imsegkmeans(img, 3);
B = labeloverlay(img,L);
rgbImage = B;
% Display the original image.
subplot(4, 5, 4);
imshow(rgbImage);
title('Original Image(Potato)');
% Split the original image into color bands.
redBand = rgbImage(:,:, 1);
greenBand = rgbImage(:,:, 2);
blueBand = rgbImage(:,:, 3);
% Threshold each color band.
redthreshold = 100;
greenThreshold = 140;
blueThreshold = 170;
redMask = (redBand < redthreshold);
greenMask = (greenBand > greenThreshold);
blueMask = (blueBand < blueThreshold);
% Combine the masks to find where all 3 are "true."
damagedAreasMask = uint8(redMask & greenMask & blueMask);
maskedrgbImage = uint8(zeros(size(damagedAreasMask))); % Initialize
maskedrgbImage(:,:,1) = rgbImage(:,:,1) .* damagedAreasMask;
maskedrgbImage(:,:,2) = rgbImage(:,:,2) .* damagedAreasMask;
maskedrgbImage(:,:,3) = rgbImage(:,:,3) .* damagedAreasMask;
%imtool(maskedrgbImage);
reqInfo = maskedrgbImage(:, :, 1) > 0 & maskedrgbImage(:, :, 2) > 0 & maskedrgbImage(:, :, 3) > 0;
res = sum(reqInfo(:));
disp(res)
t = 10000;
if type=='b'
    t = 5000;
end
if res>t
    subplot(4, 5, 5);
    imshow(maskedrgbImage);
    title('Result: Infected');
else
    subplot(4, 5, 5);
    imshow(maskedrgbImage);
    title('Result: Good');
end  

%===============================================================================%
img = imread('banana.png');
%img = imread('b1.jpg');
%img = imread('b2.jpg');
type = 'b'; 

[L, Centers] = imsegkmeans(img, 3);
B = labeloverlay(img,L);
rgbImage = B;
% Display the original image.
subplot(4, 5, 6);
imshow(rgbImage);
title('Original Image(Banana)');
% Split the original image into color bands.
redBand = rgbImage(:,:, 1);
greenBand = rgbImage(:,:, 2);
blueBand = rgbImage(:,:, 3);
% Threshold each color band.
redthreshold = 100;
greenThreshold = 140;
blueThreshold = 170;
redMask = (redBand < redthreshold);
greenMask = (greenBand > greenThreshold);
blueMask = (blueBand < blueThreshold);
% Combine the masks to find where all 3 are "true."
damagedAreasMask = uint8(redMask & greenMask & blueMask);
subplot(4, 5, 7);
imshow(damagedAreasMask, []);
title('Damaged Areas Mask');
maskedrgbImage = uint8(zeros(size(damagedAreasMask))); % Initialize
maskedrgbImage(:,:,1) = rgbImage(:,:,1) .* damagedAreasMask;
maskedrgbImage(:,:,2) = rgbImage(:,:,2) .* damagedAreasMask;
maskedrgbImage(:,:,3) = rgbImage(:,:,3) .* damagedAreasMask;
%imtool(maskedrgbImage);
reqInfo = maskedrgbImage(:, :, 1) > 0 & maskedrgbImage(:, :, 2) > 0 & maskedrgbImage(:, :, 3) > 0;
res = sum(reqInfo(:));
disp(res)
t = 10000;
if type=='b'
    t = 5000;
end
if res>t
    subplot(4, 5, 8);
    imshow(maskedrgbImage);
    title('Result: Infected');
else
    subplot(4, 5, 8);
    imshow(maskedrgbImage);
    title('Result: Good');
end  

%=================================================================================%

%img = imread('b1.jpg');
img = imread('b2.jpg');
[L, Centers] = imsegkmeans(img, 3);
B = labeloverlay(img,L);
rgbImage = B;
% Display the original image.
subplot(4, 5, 9);
imshow(rgbImage);
title('Original Image(Banana)');
% Split the original image into color bands.
redBand = rgbImage(:,:, 1);
greenBand = rgbImage(:,:, 2);
blueBand = rgbImage(:,:, 3);
% Threshold each color band.
redthreshold = 100;
greenThreshold = 140;
blueThreshold = 170;
redMask = (redBand < redthreshold);
greenMask = (greenBand > greenThreshold);
blueMask = (blueBand < blueThreshold);
% Combine the masks to find where all 3 are "true."
damagedAreasMask = uint8(redMask & greenMask & blueMask);
maskedrgbImage = uint8(zeros(size(damagedAreasMask))); % Initialize
maskedrgbImage(:,:,1) = rgbImage(:,:,1) .* damagedAreasMask;
maskedrgbImage(:,:,2) = rgbImage(:,:,2) .* damagedAreasMask;
maskedrgbImage(:,:,3) = rgbImage(:,:,3) .* damagedAreasMask;
%imtool(maskedrgbImage);
reqInfo = maskedrgbImage(:, :, 1) > 0 & maskedrgbImage(:, :, 2) > 0 & maskedrgbImage(:, :, 3) > 0;
res = sum(reqInfo(:));
disp(res)
t = 10000;
if type=='b'
    t = 5000;
end
if res>t
    subplot(4, 5, 10);
    imshow(maskedrgbImage);
    title('Result: Infected');
else
    subplot(4, 5, 10);
    imshow(maskedrgbImage);
    title('Result: Good');
end  

%=================================================================================%
% display the  Original Image
subplot(4,5,12);
imshow(ai); 
title('Internal Image(Apple)')
%%=================================================================================================
n=imhist(ai); % Compute the histogram
N=sum(n); % sum the values of all the histogram values
max=0; %initialize maximum to zero
%%================================================================================================
for i=1:256
    P(i)=n(i)/N; %Computing the probability of each intensity level
end
%%================================================================================================
for T=2:255      % step through all thresholds from 2 to 255
    w0=sum(P(1:T)); % Probability of class 1 (separated by threshold)
    w1=sum(P(T+1:256)); %probability of class2 (separated by threshold)
    u0=dot([0:T-1],P(1:T))/w0; % class mean u0
    u1=dot([T:255],P(T+1:256))/w1; % class mean u1
    sigma=w0*w1*((u1-u0)^2); % compute sigma i.e variance(between class)
    if sigma>max % compare sigma with maximum 
        max=sigma; % update the value of max i.e max=sigma
        threshold=T-1; % desired threshold corresponds to maximum variance of between class
    end
end
%%====================================================================================================
bw=im2bw(ai,threshold/255); % Convert to Binary Image
subplot(4,5,13);
imshow(bw);
title("Otsu threshold");
imgc = uint8(imcomplement(bw));
%imshow(imgc); % Display the Binary Image

finalImage = uint8(zeros(size(ai)));
finalImage(:,:,1) = ai(:,:,1) .* imgc;
finalImage(:,:,2) = ai(:,:,2) .* imgc;
finalImage(:,:,3) = ai(:,:,3) .* imgc;
%imshow(finalImage);
reqInfo = finalImage(:, :, 1) > 0 & finalImage(:, :, 2) > 0 & finalImage(:, :, 3) > 0;
res = sum(reqInfo(:));
disp(res)
t = 10000;
%if type=='b'
%    t = 5000;
%end
subplot(4,5,14); 
if res>t
    imshow(finalImage);
    title('Result: Infected');
else
    imshow(finalImage);
    title('Result: Good');
end 

%==========================================================================%
subplot(4,5,16);
imshow(mi);
title('infected mango(Spongy tissue)');
subplot(4,5,17);
imshow(m4);
title('x-ray image');
m4=rgb2gray(m4);
x=(m4>150);
subplot(4,5,18);
imshow(x);
title('segmented defected region');
mi2 = imread('m3.png');
subplot(4,5,19);
imshow(mi2);
title('good mango');
m4=rgb2gray(mi2);
x=(m4>150);
subplot(4,5,20);
imshow(x);
title('non-infected mango');