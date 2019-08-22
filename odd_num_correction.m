N = 16; 
n = (0:N-1)'; 
x = cos(pi/5*n);

for k = 1:16
    eval(['D' num2str(k) '=x(t1(' num2str(k) ') +1);'])
end 

e = exp([0:1]*2*pi*1i/2);  % correction factor 

C1 = [ [D1, D1] + [D2, D2].*e];
C2 = [ [D3, D3] + [D4, D4].*e];
C3 = [ [D5, D5] + [D6, D6].*e];
C4 = [ [D7, D7] + [D8, D8].*e];
C5 = [ [D9, D9] + [D10, D10].*e];
C6 = [ [D11, D11] + [D12, D12].*e];
C7 = [ [D13, D13] + [D14, D14].*e];
C8 = [ [D15, D15] + [D16, D16].*e];



