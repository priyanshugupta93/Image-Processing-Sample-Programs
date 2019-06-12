
flag=uint8(zeros(300, 600, 3)); 
flag(:, :, :)=255; 
%Red Color 
flag(1:100, :, 1)=239; 
flag(1:100, :, 2)=65; 
flag(1:100, :, 3)=53; 
  
%Blue Color 
flag(200:300, :, 1)=0; 
flag(200:300, :, 2)=85; 
flag(200:300, :, 3)=164; 
  
flag(:,:,:)=flag(300:-1:1,:,:);
%image transpose
I=permute(flag,[2 1 3]);
% displaying the matrix as image 
figure, imshow(I); 
imwrite(I,"FranceFlag.png");