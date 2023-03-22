clear;
img = zeros(800,480,3,"uint8");
% for row =1:800
%     for col = 1:480
%         if img(row,col,:) == 0
%             img(row,col,:) = 220;
%         end
%     end
% end
imshow(img)
hold on
plot([1,480],[1,800],'color','w','LineWidth',1);
hold on
plot([1,480], [800,1],'color','w','LineWidth',1) 
H = getframe(gca);
imwrite(H.cdata(2:801,:,:), "/Users/sanghyunryu/Dropbox (Meta)/DVE/test_Image/480x800/Line_Image/CrossLine_b.png");



