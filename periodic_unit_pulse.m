N=50; 
n=0:(N-1); 
x = [1 0 0 0 0]'*ones(1,10);
n = n'; 
x=x(:);
stem(n,x, 'filled')

%unit step

u = [zeros(1,5), ones(1,6)]; 
stem(u,'filled')

%ramp_signal

r = [zeros(1,5), 0:5];
stem(r, 'filled')