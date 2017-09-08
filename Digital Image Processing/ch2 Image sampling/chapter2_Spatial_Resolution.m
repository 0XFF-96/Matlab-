%%% 本程序用于演示《数字图像处理》第2章的图像的空间分辨率的变化
I=imread('cameraman.tif');
[height,width]=size(I);
figure,subplot(2,3,1),imshow(I),xlabel([num2str(width),'x',num2str(height)]);
for k=2:6
    I=imresize(I,0.5,'bicubic');
    [height,width]=size(I);
    subplot(2,3,k),imshow(I),xlabel([num2str(width),'x',num2str(height)]);
end