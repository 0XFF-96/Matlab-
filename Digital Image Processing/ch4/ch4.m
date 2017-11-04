% % 构造原始图像
% 
% I= zeros(256,256);
% I(88:168, 124:132) = 1;
% % 图像范围是256*256 ， 前一值是纵向比， 后一值是横向比
% 
% imshow(I)
% % 求原始图像的傅里叶频谱
% J = fft2(I);
% F = abs(J);
% J1 = fftshift(F); figure
% imshow(J1, [5, 50])
% 
% %对原始图像进行旋转
% J = imrotate(I, 90,'bilinear', 'crop');
% figure
% imshow(J);
% % 求旋转后图像的傅里叶频谱
% J1 = fft2(J);
% F = abs(J1);
% J2 = fftshift(F); figure
% imshow(J2, [5, 50])

%为什么它的频谱会使这样子的？  为什么

%对cameraman.tif 文件计算二维DCT变换








