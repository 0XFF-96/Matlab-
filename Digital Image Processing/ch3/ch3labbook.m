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
title('ԭͼ');

J = imadjust(I, [0.3;0.6], [0.1;0.9]); % ���ûҶȱ仯��Χ
subplot(1, 3, 2);
imshow(J);
title('������չ');
                        
%��ͼ��ת��Ϊdouble����
I1=double(I);
I2=I1/255;                     %��һ����ͼ��
C=2;
K=C*log(1+I2);
subplot(1, 3, 3);
imshow(K);
title('��������չ');

M=255-I;
figure;
subplot(1, 3,1);
imshow(M);
title('�Ҷȵ���');
N1 = im2bw(I, 0.4);
N2 = im2bw(I, 0.7);
subplot(1, 3,2);
imshow(N1);
title('��ֵ����ֵ0.4');
subplot(1, 3,3);
imshow(N2);
title('��ֵ����ֵ0.7');


