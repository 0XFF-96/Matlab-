%image processing charter 1
%basci code
%writen by : Alex96
%Time :2017-9-20
%reference:None
%purpose: 
%if you have any problem, you can find me in github.


% fft2 ��ifft2 �����Ƿֱ�����ά�Ŀ��ٸ���Ҷ�任�ͷ��任
% 
% f = zeros(100, 100);
% f(20:70,40:60) = 1;
% imshow(f);
% F=fft2(f);    %�����ά�Ŀ��ٸ���Ҷ�任
% F2=log(abs(F));  %�Է�ֵȡ����
% imshow(F2),colorbar 



% fftshift ����ʵ���˲�������͸ı�ͼ����ʾ����

% f = zeros(100,100);
% f(20:70,40:60) = 1; % ������Ȱ��������ע�͵�������ͼ�񣬾�֪��ʲôЧ����
% imshow(f);
% F = fft2(f,256,156);
% F2 = fftshift(F);`
% imshow(log(abs(F2)));

% 
% dct2 ������ ���û��ڿ��ٸ���Ҷ�任���㷨
% ���ܣ���ʵ�ֽϴ�����������ɢ���ұ任��
% idct2 :ʵ��ͼ��Ķ�ά����ɢ���ұ任��

%  ��Ҳ�㲻�����Ĳ������������ģ� Ϊʲô�������ò���������
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


% edge : ��ȡͼ���Ե

% RGB = imread('peppersz.bmp');
% I=rgb2gray(RGB);
% BW=edge(I);
% imshow(I),figure,imshow(BW);

%randon  �������任�Ĺ�ϵ����
% ����ָ��������ͼ������ͶӰ

% RGB = imread('peppers.bmp');
% I=rgb2gray(RGB);
% BW=edge(I);
% 
% theta =0:179;
% [R,xp]=radon(BW,theta);  % ͼ������ͶӰ
% figure,imagesc(theta,xp,R);colormap(hot) ;
% xlabel('\theta(degrees)');
% ylabel('X\prime');      %�ұ���
% title('R_{\theta}(x\prime)'); %��ͼ��ӱ���
% colorbar


% imhist : ����ͼ���ֱ��ͼ
% ���ܣ�ͼ����ǿ���ָ����
% 
% A=imread('peppers.bmp');
% B=rgb2gray(A); % ��RGBת��Ϊ�Ҷ�ͼ��
% imshow(B);     % ��ʾ�Ҷ�ͼ��
% imhist(B);     % ��ʾ�Ҷ�ͼ���ֱ��ͼ
% 
% 
% C = histeq(B); % ��ͼ�� B ���� ���⻯
% imshow(C);     % ��ʾͼ��
% imhist(C);     % ���⻯�Ҷ�ֱ��ͼ
% 

% filter2 : ��ֵ�˲�

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


% % wiener2 ����ʵ��  ��ά�ɣ� �˲�
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
% medfitl2 :ʵ����ֵ�˲�


% a = imread('peppers.bmp');
% I=rgb2gray(a);
% imshow(I);
% 
% K1=medfilt2(I,[3,3]);
% K2=medfilt2(I,[10,10]);  
% K3=medfilt2(I,[20,20]);  % Ϊ��ʹЧ�������ԣ���
% figure,imshow(K1);
% figure,imshow(K2);
% figure,imshow(K3);







