% % function for 8x8 averaging
% averaging = @(imageBlock)...
%     sum(imageBlock.data, 'all')/9;
% image = imread("/Users/sanghyunryu/Desktop/W_GRAY150_ccd8230x8911_2022.12.03_PM.06.35.22.png");
% 
% averaged = uint16(blockproc(uint16(image(:, :, 1)), [3, 3], averaging));
% imwrite(averaged, "/Users/sanghyunryu/Desktop/image3_3.png")
% % averagedG = blockproc(double(stress(:, :, 2)), [3, 3], averaging);
% % averagedB = blockproc(double(stress(:, :, 3)), [3, 3], averaging);
% % averaged = cat(3, averagedR, averagedG, averagedB);
% 
% 
% 
% 
t1 = uint16(imread("/Users/sanghyunryu/Desktop/W_GRAY150_ccd8230x8911_2022.12.03_PM.06.35.22.png"));
t2 = uint16(imread("/Users/sanghyunryu/Desktop/image3_3.png"));


m1 = mean(t1,'all');
m2 = mean(t2, 'all');