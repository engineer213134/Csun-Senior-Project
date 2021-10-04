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