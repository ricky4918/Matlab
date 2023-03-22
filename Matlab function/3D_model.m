testImageG = imread("/Users/sanghyunryu/Desktop/W_GRAY150_ccd8230x8911_2022.12.03_PM.06.35.22.png");

A = testImageG(:,:,1);
[u, v] = size(A);
t1 = 1:10:u;
t2 = 1:10:v;
b = A(t1,t2);
surf(b,'EdgeColor','none');
colormap(gray)





