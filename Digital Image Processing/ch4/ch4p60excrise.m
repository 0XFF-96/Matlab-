I = imread('1.bmp');
figure(1)
imshow(real(I));
I = I(:,:,3);
fftI = fft2(I);
sfftI = fftshift(fftI); %求离散傅里叶频谱
%对原始图像进行二维离散傅里叶变换， 并将其坐标原点移动到频谱图中央位置

RRfdp1 = real(sfftI);
IIfdp1 = (RRfdp1.^2 + IIfdp1.^2);
a=(a-min(min(a))/ (max(max(a)) -min(min(a)) * 225;
figure(2)

imshow(real(a));
I = imread('2.bmp');
figurre(3),
imshow(real(I));
I = i(:, :, 3);
fftT = fft2(I);
sfftI=fftshift(fftI);% 求离散傅里叶频谱
% 对原始图像进行二维离散傅里叶变换，并将其坐标原点移到频谱图中央位置
RRfdp1= real(sfftI);
