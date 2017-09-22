%image processing charter 3 
%basci code
%writen by : Alex96
%Time :2017-9-22
%reference:None
%purpose: 
%if you have any problem, you can find me in github.(jimtrump)
%book p41

I= imread('lenna.bmp');
figure;
subplot(1, 3, 1);
imshow(I);
title('原图');

J = imadjust(I, [0.3;0.6], [0.1;0.9]); % 设置灰度变化范围
subplot(1, 3, 2);
imshow(J);
title('线性扩展');
                        
%将图像转化为double类型
I1=double(I);
I2=I1/255;                     %归一化此图像
C=2;
K=C*log(1+I2);
subplot(1, 3, 3);
imshow(K);
title('非线性扩展');

M=255-I;
figure;
subplot(1, 3,1);
imshow(M);
title('灰度倒置');
N1 = im2bw(I, 0.4);
N2 = im2bw(I, 0.7);
subplot(1, 3,2);
imshow(N1);
title('二值化阀值0.4');
subplot(1, 3,3);
imshow(N2);
title('二值化阀值0.7');


