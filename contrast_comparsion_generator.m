imagefiles = dir('C:\Users\<filepath_to_folder>\*.jpg');      
nfiles = length(imagefiles);    % Number of files found
for ii=1:nfiles
   currentfilename = imagefiles(ii).name;
   currentimage = imread(currentfilename);
   images{ii} = currentimage;
end
%returns array of all images in folder


imshow(images{3});
I1 = rgb2gray(images{1});
I2 = rgb2gray(images{2});
I3 = rgb2gray(images{3});

kernel = [-1, -1, -1, -1, 8, -1, -1, -1]/8;
%{
conv2 is a filter that performs a "slide" on two matrices
of the same dimension(2D arrays, i.e. a grayscale image) using a
kernel(another matrix)
%}
diffImage = conv2(double(I3), kernel, 'same');
%{ 
returns a score on every pixel of image...wip
image_contrast1 = max(I1(:)) - min(I2(:));
image_contrast2 = max(I2(:)) - min(I2(:));
image_contrast3 = max(I3(:)) - min(I3(:)); 
%}
%cpp or contrast per pixel is defined as:
%is defined as the average intensity
%difference between a pixel and its adjacent pixel.
cpp = mean2(diffImage);
disp("cpp = "+cpp);