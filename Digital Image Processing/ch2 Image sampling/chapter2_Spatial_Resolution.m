%%% ������������ʾ������ͼ������2�µ�ͼ��Ŀռ�ֱ��ʵı仯
I=imread('cameraman.tif');
[height,width]=size(I);
figure,subplot(2,3,1),imshow(I),xlabel([num2str(width),'x',num2str(height)]);
for k=2:6
    I=imresize(I,0.5,'bicubic');
    [height,width]=size(I);
    subplot(2,3,k),imshow(I),xlabel([num2str(width),'x',num2str(height)]);
end