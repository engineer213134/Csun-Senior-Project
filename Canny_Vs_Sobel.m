%
I = imread('coins.png');
imshow(I)

%
BW1 = edge(I,'sobel');
BW2 = edge(I,'canny');

tiledlayout(1,3)

nexttile
imshow(I)
title('coins.png')

nexttile
imshow(BW1)
title('Sobel Filter')

nexttile
imshow(BW2)
title('Canny Filter')