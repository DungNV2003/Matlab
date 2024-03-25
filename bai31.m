x = randi([0, 1], 1, 128); 
y=reshape(x,length(x)/4,4)
z = bi2de(y,'left-msb'); 

