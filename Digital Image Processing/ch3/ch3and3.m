% ͼ������

% A = imread('lenna.bmp');
% B1 = imresize(A, 1.5);  % �����Ŵ�1.5���� Ĭ�ϲ��õ��� ����ڷ������߲�ֵ
% 
% B2 = imresize(A, [420 384]);
% C1 = imresize(A, 0.7);    %�Ǳ�����С��0.7��
% C2 = imresize(A,[150 180]); % �Ǳ�����С��150:180
% figure;
% imshow(B1);
% title('�Ŵ�ͼ');
% figure;
% imshow(B2);
% title('�Ǳ����Ŵ�ͼ');
% figure;
% imshow(C1);
% title('������Сͼ');
% figure;
% imshow(C2);
% title('�Ǳ�����С');


% ͼ����ת
I= imread('lenna.bmp');
J=imrotate(I, 45);     % ͼ�������ʱ����ת�� Ĭ�ϲ�������ڲ�ֵ
K=imrotate(I, 90);
subplot(1, 3, 1);
imshow(I);
subplot(1, 3, 2);
imshow(J);
subplot(1, 3, 3);
imshow(K);
