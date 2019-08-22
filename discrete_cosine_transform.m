% creating basis functions in matlab 

[x, y] = meshgrid(0:7); 

n =0; m =2; 
% basis function 

bf = cos((2*x+1)*m*pi/16).*cos((2*y+1)*n*pi/16); 

bar3(1:8, bf);

figure(2); 

for n =0:7
    for m = 0:7 
        bf = cos((2*x+1)*m*pi/16).*cos((2*y+1)*n*pi/16);
        subplot(8,8, n*8+m+1); 
        image(32*(bf+1)); 
        colormap gray; 
        axis equal; 
        axis off; 
    end 
end 
        