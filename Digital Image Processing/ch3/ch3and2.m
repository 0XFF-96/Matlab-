%image processing charter 3 
%basci code
%writen by : Alex96
%Time :2017-9-22
%reference:None
%purpose: 
%if you have any problem, you can find me in github.(jimtrump)
%book p41

%选取两张图片进行图像的代数运算，看输出的效果如何！
% 
% I= imread('lenna.bmp');
% I=rgb2gray(I); 
% J= imread('lenna.bmp');
% J= rgb2gray(J);   %  单独一行会使到两张照片的纬度不一致？
% I=im2double(I);
% J=im2double(J);  % 将图像转化为double 型 ？  为什么呢？
% 
% K = I + 0.3*J ; %为什么是0.3?     % 两张照片的纬度要一致。。
% subplot(1, 3, 1);
% 
% imshow(I);
% title('人物图');
% subplot(1, 3, 2);
% imshow(J);
% title('背景图');
% subplot(1, 3, 3);
% imshow(K);
% title('相加后的图');
% imwrite(K,'lenna2.bmp');


% 两张图片相乘
% A = I; 
% B = J;
% C=A -0.3 * B;  % 若0.3 参数 曾大会发生什么？
% subplot(1, 3, 1);
% imshow(A);
% title('混合图');
% subplot(1,3,2);
% imshow(B);
% title('背景图');
% subplot(1, 3,3);
% imshow(C);
% title('分离后的图');



A = imread('lenna.bmp');
B = J;
A=rgb2gray(A);
A=im2double(A);
subplot(1, 2,1);
imshow(A);
title('原图');
B = zeros(512, 512);
B(40:300,40:300) = 1;
figure 
imshow(B);
K=A.*B;
subplot(1, 2, 2);
imshow(K);
title('局部图');




