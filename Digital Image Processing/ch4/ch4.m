% % ����ԭʼͼ��
% 
% I= zeros(256,256);
% I(88:168, 124:132) = 1;
% % ͼ��Χ��256*256 �� ǰһֵ������ȣ� ��һֵ�Ǻ����
% 
% imshow(I)
% % ��ԭʼͼ��ĸ���ҶƵ��
% J = fft2(I);
% F = abs(J);
% J1 = fftshift(F); figure
% imshow(J1, [5, 50])
% 
% %��ԭʼͼ�������ת
% J = imrotate(I, 90,'bilinear', 'crop');
% figure
% imshow(J);
% % ����ת��ͼ��ĸ���ҶƵ��
% J1 = fft2(J);
% F = abs(J1);
% J2 = fftshift(F); figure
% imshow(J2, [5, 50])

%Ϊʲô����Ƶ�׻�ʹ�����ӵģ�  Ϊʲô

%��cameraman.tif �ļ������άDCT�任








