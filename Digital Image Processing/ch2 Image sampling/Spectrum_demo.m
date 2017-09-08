figure;                      %建立图形窗口1
[u,v] = meshgrid(-1:0.01:1);       %生成二维频域网格
F1 = abs(sin(u.*pi+eps)./(u.*pi+eps));            
F2 = abs(sin(v.*pi+eps)./(u.*pi+eps));
F=F1.*F2;                     %计算幅度频谱F=|F(u,v)|
surf(u,v,F);                     %显示幅度频谱，如图2.3(b)
shading interp;                  %平滑三维曲面上的小格
colorbar
axis off;                       %关闭坐标系
figure;                      %建立图形窗口2
subplot(121),imshow(F)
F1=histeq(F);                  %扩展F的对比度以增强视觉效果
subplot(122),imshow(F1);                   %用图像来显示幅度频谱，如图2.3(c)