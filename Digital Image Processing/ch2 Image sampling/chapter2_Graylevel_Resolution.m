%%% ������������ʾ������ͼ������2�µ�ͼ��ĻҶȼ��ֱ��ʵı仯
I=imread('lena_256.tif');
graylevel=256;
figure,subplot(2,4,1),imshow(I),xlabel('256');
I=double(I);
for k=2:8
    graylevel=graylevel/2;
    J=floor(I/2^(k-1))/(2^(9-k)-1)*255; %%%�鲢�Ҷȼ�
    subplot(2,4,k),imshow(uint8(round(J))),xlabel(num2str(graylevel));
end
    
