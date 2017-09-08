%image processing charter 1
%basci code
%writen by : Alex96
%Time :2017-9-8
%reference:None
%purpose: 
%if you have any problem, you can find me in github.



%图片读入


% 图片写入


%colorbar: 函数

% 图片基本代数运算

% I = imread('peppers.bmp');
% J = imadd(I, 100);  % you can change the param to see how it works
% subplot(1,2,1),imshow(I);
% subplot(1,2,2),imshow(J);

% imsubstract: subtract the image  lessen the brightness of image
% I = imread('peppers.bmp');
% J = imsubtract(I,100);
% subplot(1, 2, 1), imshow(I);
% subplot(1, 2, 2),imshow(J);

% imultiply:multiply two image , to scaling its bringtness
%  I = imread('peppers.bmp');
% J = immultiply(I,0.5);

% imdivide: 
% J=imdivide(I,0.5);
% subplot(1,2,1),imshow(I);
% subplot(1,2,2),imshow(J);


% imresize: sacaling the image
% J = imread('peppers.bmp');
% X1 = imresize(J, 2);
% figure, imshow(J)

% rotae the image
% imrotate
%  I = imread('peppers.bmp');
%  J = imrotate(I, 45, 'bilinear');
%  subplot(1, 2, 1), imshow(I);
%  subplot(1, 2, 2), imshow(J);

% imcrop: cut image
% I = imread('peppers.bmp');
% I2 = imcrop(I, [75 68 130 122]);
%  subplot(1, 2, 1), imshow(I);
%  subplot(1, 2, 2), imshow(I2);

% I = imread('peppers.bmp');
% c=[200 250 278 248 199 172];
% r=[21 21 75 121 121 75];
% BW=roipoly(I, c, r);
% subplot(1, 2, 1), imshow(I);
% % subplot(1, 2, 2), imshow(BW);

% 按灰度值选择区域做二值化处理
% Select the region by gray value to do the two values
% a = imread('peppers.bmp');
% I = rgb2gray(a);
% BW=roicolor(I, 128, 225);
%  subplot(1, 2, 1), imshow(I);
%  subplot(1, 2, 2), imshow(BW);

%  ploy2mask: 按指定的多边形区域为 二值样掩模
x = [63 186 54 190 63];
y = [60 60 209 204 60];
bw=poly2mask(x, y, 256, 256);
imshow(bw)
hold on
plot(x, y, 'b', 'LineWidth',2);
hold off

% rotifil2 : 实现区域滤波
% a = imread('peppers.bmp');
% I = rgb2gray(a);
% c = [200 250 278 248 199 172];
% r = [21 21 75 121 121 75];
% BW = roipoly(I, c, r);
% h = fspecial('unsharp');
% J= roifilt2(h, I, BW);
% subplot(1,2,1),imshow(I)
% subplot(1,2,1),imshow(J)








