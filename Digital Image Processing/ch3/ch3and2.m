%image processing charter 3 
%basci code
%writen by : Alex96
%Time :2017-9-22
%reference:None
%purpose: 
%if you have any problem, you can find me in github.(jimtrump)
%book p41

%ѡȡ����ͼƬ����ͼ��Ĵ������㣬�������Ч����Σ�
% 
% I= imread('lenna.bmp');
% I=rgb2gray(I); 
% J= imread('lenna.bmp');
% J= rgb2gray(J);   %  ����һ�л�ʹ��������Ƭ��γ�Ȳ�һ�£�
% I=im2double(I);
% J=im2double(J);  % ��ͼ��ת��Ϊdouble �� ��  Ϊʲô�أ�
% 
% K = I + 0.3*J ; %Ϊʲô��0.3?     % ������Ƭ��γ��Ҫһ�¡���
% subplot(1, 3, 1);
% 
% imshow(I);
% title('����ͼ');
% subplot(1, 3, 2);
% imshow(J);
% title('����ͼ');
% subplot(1, 3, 3);
% imshow(K);
% title('��Ӻ��ͼ');
% imwrite(K,'lenna2.bmp');


% ����ͼƬ���
% A = I; 
% B = J;
% C=A -0.3 * B;  % ��0.3 ���� ����ᷢ��ʲô��
% subplot(1, 3, 1);
% imshow(A);
% title('���ͼ');
% subplot(1,3,2);
% imshow(B);
% title('����ͼ');
% subplot(1, 3,3);
% imshow(C);
% title('������ͼ');



A = imread('lenna.bmp');
B = J;
A=rgb2gray(A);
A=im2double(A);
subplot(1, 2,1);
imshow(A);
title('ԭͼ');
B = zeros(512, 512);
B(40:300,40:300) = 1;
figure 
imshow(B);
K=A.*B;
subplot(1, 2, 2);
imshow(K);
title('�ֲ�ͼ');




