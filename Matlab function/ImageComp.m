clear;
without_150 = imread("/Users/sanghyunryu/Dropbox (Meta)/Meta-ELP/20221207/3. MONO CAMERA WITH OUT GLASS/mic/TEMP_30/HeatingUp/W_GRAY150_ccd8230x8911_2022.12.03_PM.07.27.01.png");
with_150 = imread("/Users/sanghyunryu/Dropbox (Meta)/Meta-ELP/20221207/2. MONO CAMERA WITH GLASS/mic/TEMP_30/HeatingUp/W_GRAY150_ccd8230x8911_2022.12.03_PM.06.35.22.png");

w_without_150 = with_150 - without_150;
without_w_150 = without_150 - with_150;

w_without_x40_150 = w_without_150 * 40;
without_w_x40_150 =without_w_150 * 40;

with_255 = imread("/Users/sanghyunryu/Dropbox (Meta)/Meta-ELP/20221207/2. MONO CAMERA WITH GLASS/mic/TEMP_30/HeatingUp/W_GRAY255_ccd8230x8911_2022.12.03_PM.06.38.13.png");
without_255 = imread("/Users/sanghyunryu/Dropbox (Meta)/Meta-ELP/20221207/3. MONO CAMERA WITH OUT GLASS/mic/TEMP_30/HeatingUp/W_GRAY255_ccd8230x8911_2022.12.03_PM.07.29.29.png");


w_without_255 = with_255 - without_255;
without_w_255 = without_255 - with_255;

w_without_x40_255 = w_without_255 * 40;
without_w_x40_255 =without_w_255 * 40;


with_50 = imread("/Users/sanghyunryu/Dropbox (Meta)/Meta-ELP/20221207/2. MONO CAMERA WITH GLASS/mic/TEMP_30/HeatingUp/W_GRAY50_ccd8230x8911_2022.12.03_PM.06.32.45.png");
without_50 = imread("/Users/sanghyunryu/Dropbox (Meta)/Meta-ELP/20221207/3. MONO CAMERA WITH OUT GLASS/mic/TEMP_30/HeatingUp/W_GRAY50_ccd8230x8911_2022.12.03_PM.07.24.46.png");

w_without_50 = with_50 - without_50;
without_w_50 = without_50 - with_50;

w_without_x40_50 = w_without_50 * 40;
without_w_x40_50 =without_w_50 * 40;

% imshowpair(w_without_150, without_w_150, 'montage')
% figure, imshowpair(w_without_x40_150,without_w_x40_150, 'montage')


imwrite(w_without_x40_150, "/Users/sanghyunryu/Desktop/test/glass_nonglass.png");
imwrite(without_w_x40_150, "/Users/sanghyunryu/Desktop/test/nonglass_glass.png");


