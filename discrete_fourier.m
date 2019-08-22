N = 8; 
n =[0: N-1]'; 
x = cos(pi/4*n); 
figure(1)
stem(n,x, 'filled')

M = zeros(N, N); 
for k = 0: N-1
    for n = 0: N-1
        M(n+1, k+1) = exp(-1i*2*pi*n*k/N);
    end 
end 
X = M*x;

figure(2); 
stem(abs(X), 'filled')

figure(3); 
stem(abs(fft(x)), 'filled')