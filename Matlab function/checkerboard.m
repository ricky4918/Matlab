a = zeros(3000,2784,3);
for i = 1:3000
    for j = 1:2784
        if (i == j)
            a (i, j,:) = 0;
        elseif (mod(j, 2) == 0) && (mod(i,2) == 0)
             a(i,j,:) = 0;
        elseif (mod(j, 2) == 0) || (mod(i,2) == 0)
            a(i,j,:) = 1;
        end
    end
end
t = uint8(a);

for row =1:3000
    for col = 1:2784
        if t(row,col,:) == 0
            t(row,col,:) = 0;
        else
            t(row,col,:) = 110;
        end

    end
end

% imwrite(uint8(t(:,:,1)),"/Users/sanghyunryu/Dropbox (Meta)/DVE/test_Image/480x800/1-pixel checker pattern/checkerboard_gray.png")
imwrite(uint8(t),"/Users/sanghyunryu/Dropbox (Meta)/DVE/checkerboard_rgb_3000_2784_110.png")



x = imread("/Users/sanghyunryu/Dropbox (Meta)/DVE/test_Image/480x800/1-pixel checker pattern/checkerboard_gray.png");