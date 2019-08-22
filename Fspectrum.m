function fs = Fspectrum(M,C)
[x, y] = meshgrid(0:7); 
for n = 0:7 
    for m = 0:7 
        fs(n+1, m+1)= sum(sum(cos((2*x+1)*m*pi/16).*cos((2*y+1)*n*pi/16).*M)); 
    end 
end 

fs(:, 1) = fs(:,1)/sqrt(2); 

fs(1, :) = fs(1,:)/sqrt(2); 
fs=fs/4; 

Q1 = [16 11 10 16 24 40 51 61;
      12 12 14 19 26 58 60 55;
      14 13 16 24 40 57 69 56;
      14 17 22 29 51 87 80 62; 
      18 22 37 56 68 109 103 77; 
      24 35 55 64 81 104 113 92; 
      49 64 78 87 103 121 120 101; 
      72 92 95 98 112 100 103 99]; 
  
  Q2 = [17 18 24 47 99 99 99 99; 
        18 21 26 66 99 99 99 99; 
        24 26 56 99 99 99 99 99; 
        47 66 99 99 99 99 99 99; 
        99 99 99 99 99 99 99 99;
        99 99 99 99 99 99 99 99;
        99 99 99 99 99 99 99 99;
        99 99 99 99 99 99 99 99;]; 
    
    if C ==0
        Q= Q1; 
    else
        Q= Q2; 
    end 
    fs = round(fs./Q); 
      
end 