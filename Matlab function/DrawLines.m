% myFolder = '/Users/sanghyunryu/Dropbox (Meta)/DVE/test_images/800x480_gaming_img';
% if ~isfolder(myFolder)
%   errorMessage = sprintf('Error: The following folder does not exist:\n%s', myFolder);
%   uiwait(warndlg(errorMessage));
%   return;
% end
% 
% filePattern = fullfile(myFolder, '*.jpg');
% images = dir(filePattern);
% outputfolder = "/Users/sanghyunryu/Dropbox (Meta)/DVE/test_images/Two_Line_Horizontal_225_226";
% 
% meanArr = [];
% col
% for k = 1:length(images)
%     baseFileName = images(k).name;
%     fullFileName = fullfile(myFolder,baseFileName);
%     fprintf(1, 'Now reading %s\n', fullFileName);
%     imageArray = uint8(imread(fullFileName));
%     imageArray(225:226,:,:) = 255;
%     imshow(imageArray);
%     f = fullfile(outputfolder, ['gaming_img.jpg' num2str(k) '.jpg']);
%     imwrite(imageArray,f);
%     drawnow;
% end


img = zeros(800,480,3,"uint8");

img(:,270:271,:) = 220;

imwrite(img, "/Users/sanghyunryu/Dropbox (Meta)/DVE/test_Image/480x800/Line_Image/Vertical_b_270_271.png");

for row = 1:800
    for col = 1:480
        if img(row,col,:) == 0
            img(row,col,:) = 220;
        end

    end
end

img(:,270:271,:) = 0;
imwrite(img, "/Users/sanghyunryu/Dropbox (Meta)/DVE/test_Image/480x800/Line_Image/Vertical_270_271.png");







