I = imread('1.bmp');
figure(1)
imshow(real(I));
I = I(:,:,3);
fftI = fft2(I);
sfftI = fftshift(fftI); %����ɢ����ҶƵ��
%��ԭʼͼ����ж�ά��ɢ����Ҷ�任�� ����������ԭ���ƶ���Ƶ��ͼ����λ��

RRfdp1 = real(sfftI);
IIfdp1 = (RRfdp1.^2 + IIfdp1.^2);
a=(a-min(min(a))/ (max(max(a)) -min(min(a)) * 225;
figure(2)

imshow(real(a));
I = imread('2.bmp');
figurre(3),
imshow(real(I));
I = i(:, :, 3);
fftT = fft2(I);
sfftI=fftshift(fftI);% ����ɢ����ҶƵ��
% ��ԭʼͼ����ж�ά��ɢ����Ҷ�任������������ԭ���Ƶ�Ƶ��ͼ����λ��
RRfdp1= real(sfftI);
