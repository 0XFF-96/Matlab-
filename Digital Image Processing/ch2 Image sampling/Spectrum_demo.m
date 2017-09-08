figure;                      %����ͼ�δ���1
[u,v] = meshgrid(-1:0.01:1);       %���ɶ�άƵ������
F1 = abs(sin(u.*pi+eps)./(u.*pi+eps));            
F2 = abs(sin(v.*pi+eps)./(u.*pi+eps));
F=F1.*F2;                     %�������Ƶ��F=|F(u,v)|
surf(u,v,F);                     %��ʾ����Ƶ�ף���ͼ2.3(b)
shading interp;                  %ƽ����ά�����ϵ�С��
colorbar
axis off;                       %�ر�����ϵ
figure;                      %����ͼ�δ���2
subplot(121),imshow(F)
F1=histeq(F);                  %��չF�ĶԱȶ�����ǿ�Ӿ�Ч��
subplot(122),imshow(F1);                   %��ͼ������ʾ����Ƶ�ף���ͼ2.3(c)