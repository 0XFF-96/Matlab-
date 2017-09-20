%image processing charter 1
%basci code
%writen by : Alex96
%Time :2017-9-20
%reference:None
%purpose: 
%if you have any problem, you can find me in github.


% fft2 和ifft2 函数是分别计算二维的快速傅里叶变换和反变换
% 
% f = zeros(100, 100);
% f(20:70,40:60) = 1;
% imshow(f);
% F=fft2(f);    %计算二维的快速傅里叶变换
% F2=log(abs(F));  %对幅值取对数
% imshow(F2),colorbar 



% fftshift 函数实现了补零操作和改变图像显示象限

% f = zeros(100,100);
% f(20:70,40:60) = 1; % 你可以先把这条语句注释掉，看看图像，就知道什么效果了
% imshow(f);
% F = fft2(f,256,156);
% F2 = fftshift(F);`
% imshow(log(abs(F2)));

% 
% dct2 函数： 采用基于快速傅里叶变换的算法
% 功能：　实现较大输入矩阵的离散余弦变换。
% idct2 :实现图像的二维逆离散余弦变换。

%  我也搞不懂他的参数从哪里来的， 为什么这样设置参数。。。
% RGB = imread('peppers.bmp');
% I = rgb2gray(RGB);
% I = im2double(I);
% T=dctmtx(8);
% B=blkproc(I,[8,8],'P1*x*P2',T,T');
% mask = [1 1 1 1 0 0 0 0 
%         1 1 0 0 0 0 0 0
%         1 0 0 0 0 0 0 0
%         1 0 0 0 0 0 0 0
%         0 0 0 0 0 0 0 0
%         0 0 0 0 0 0 0 0
%         0 0 0 0 0 0 0 0
%         0 0 0 0 0 0 0 0];
%    B2 = b1kproc(B, [8,8], 'P1.*x',mask);
%    I2 = blkproc(B2,[8,8],'P1*x*P2',T',T);
%    imshow(I),figure,imshow(I2);
%    


% edge : 提取图像边缘

% RGB = imread('peppersz.bmp');
% I=rgb2gray(RGB);
% BW=edge(I);
% imshow(I),figure,imshow(BW);

%randon  （拉东变换的关系）？
% 计算指定方向上图像矩阵的投影

% RGB = imread('peppers.bmp');
% I=rgb2gray(RGB);
% BW=edge(I);
% 
% theta =0:179;
% [R,xp]=radon(BW,theta);  % 图像矩阵的投影
% figure,imagesc(theta,xp,R);colormap(hot) ;
% xlabel('\theta(degrees)');
% ylabel('X\prime');      %家标题
% title('R_{\theta}(x\prime)'); %对图像加标题
% colorbar


% imhist : 产生图像的直方图
% 功能：图像增强，分割，编码
% 
% A=imread('peppers.bmp');
% B=rgb2gray(A); % 将RGB转化为灰度图像
% imshow(B);     % 显示灰度图像
% imhist(B);     % 显示灰度图像的直方图
% 
% 
% C = histeq(B); % 对图像 B 进行 均衡化
% imshow(C);     % 显示图像
% imhist(C);     % 均衡化灰度直方图
% 

% filter2 : 均值滤波

% a = imread('peppers.bmp');
% I=rgb2gray(a);
% imshow(I);
% K1 = filter2(fspecial('average',3),I)/ 255;
% K2 = filter2(fspecial('average',5),I)/255;
% K3 = filter2(fspecial('average',7),I)/255;
% 
% figure,imshow(K1);
% figure,imshow(K2);
% figure,imshow(K3);


% % wiener2 函数实现  （维纳） 滤波
% a = imread('peppers.bmp');
% I=rgb2gray(a);
% imshow(I);
% K1 = wiener2(I, [3,3]);
% K2 = wiener2(I,[5,5]);
% K3 = wiener2(I,[7,7]);
% figure,imshow(K1);
% figure,imshow(K2);
% figure,imshow(K3);
% 
% 
% medfitl2 :实现中值滤波


% a = imread('peppers.bmp');
% I=rgb2gray(a);
% imshow(I);
% 
% K1=medfilt2(I,[3,3]);
% K2=medfilt2(I,[10,10]);  
% K3=medfilt2(I,[20,20]);  % 为了使效果更明显，我
% figure,imshow(K1);
% figure,imshow(K2);
% figure,imshow(K3);







