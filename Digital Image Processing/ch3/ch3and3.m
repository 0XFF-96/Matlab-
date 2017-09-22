% 图像缩放

% A = imread('lenna.bmp');
% B1 = imresize(A, 1.5);  % 比例放大1.5倍， 默认采用的是 最近邻法进行线插值
% 
% B2 = imresize(A, [420 384]);
% C1 = imresize(A, 0.7);    %非比例缩小到0.7倍
% C2 = imresize(A,[150 180]); % 非比例缩小到150:180
% figure;
% imshow(B1);
% title('放大图');
% figure;
% imshow(B2);
% title('非比例放大图');
% figure;
% imshow(C1);
% title('比例缩小图');
% figure;
% imshow(C2);
% title('非比例缩小');


% 图像旋转
I= imread('lenna.bmp');
J=imrotate(I, 45);     % 图像进行逆时针旋转， 默认采用最近邻插值
K=imrotate(I, 90);
subplot(1, 3, 1);
imshow(I);
subplot(1, 3, 2);
imshow(J);
subplot(1, 3, 3);
imshow(K);
