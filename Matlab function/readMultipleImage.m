myFolder = '/Users/sanghyunryu/Dropbox (Meta)/DVE/11-Tester Program/01-gaming images';
if ~isfolder(myFolder)
  errorMessage = sprintf('Error: The following folder does not exist:\n%s', myFolder);
  uiwait(warndlg(errorMessage));
  return;
end

filePattern = fullfile(myFolder, '*.png');
images = dir(filePattern);

outputfolder = "/Users/sanghyunryu/Dropbox (Meta)/DVE/test_Image/480x800/Gaming_Image";


for k = 1:length(images)
    baseFileName = images(k).name;
    fullFileName = fullfile(myFolder,baseFileName);
    fprintf(1, 'Now reading %s\n', fullFileName);
    imageArray = imread(fullFileName);
    imageArray = imresize(imageArray,[800,480]);
    filename = fullfile(outputfolder, ['gaming_img' num2str(k) '.png']);
%     imshow(imageArray);
    imwrite(imageArray, filename);
    drawnow;
end