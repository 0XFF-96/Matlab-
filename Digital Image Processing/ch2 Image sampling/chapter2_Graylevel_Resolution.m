%%% 本程序用于演示《数字图像处理》第2章的图像的灰度级分辨率的变化
I=imread('lena_256.tif');
graylevel=256;
figure,subplot(2,4,1),imshow(I),xlabel('256');
I=double(I);
for k=2:8
    graylevel=graylevel/2;
    J=floor(I/2^(k-1))/(2^(9-k)-1)*255; %%%归并灰度级
    subplot(2,4,k),imshow(uint8(round(J))),xlabel(num2str(graylevel));
end
    
