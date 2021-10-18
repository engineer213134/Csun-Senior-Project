 I=imread('E:\ECE FALL\H.jpg');
imshow('E:\ECE FALL\H.jpg')
Ig=im2gray(I);
se = strel ( 'disk' , 80);
 background = imopen (Ig, se); imshow (background);
 I2 = Ig - background; imshow (I2);
I3 = imadjust (I2); imshow (I3);
bw = imbinarize (I3); bw = bwareaopen (bw, 50); imshow (bw);
results = ocr(bw);
results.Text


% New-using OCR and Preprocessing by Edge Detection
im=edge(Ig,'sobel');
imshow(im)
%Next two codes make the edges smooth and fills the holes
%connects the edge lines by using diamonds 
im=imdilate(im,strel('diamond',2));
%fill the holes
>> imf=imfill(im,'holes');
imshow(imf)
 % The next line will give us the ability to draw a ractangular region on licence plate numbers and seperate it from rest of the image using (roi) option which was not used in previous code
figure; imshow(imer); roi = round(getPosition(imrect));
 %run OCR
>> results = ocr(imer,roi);
 %OCR results
>> results.Text
