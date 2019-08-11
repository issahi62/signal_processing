t = [ 0: 2e-5:0.1];

% transmitted signal 
x = gauspuls(t-0.001, 2e3, 0.5);
plot(t(1:200), x(1:200), 'r-')
soundsc(x, 1/2e-5); 

% received echo without noise
y = x+0.15*gauspuls(t-0.068, 2e3, 0.5); 
soundsc(y, 1/2e-5)
% received echo with noise
y2 = x+0.15*gauspuls(t-0.068, 2e3, 0.5)+.05*randn(size(t));
plot(t,y2)
soundsc(y2, 1/2e-5)

% echolocation based on the cross-correlation
r = zeros(size(t)); 
for n = 1:4902
    r(1,n) = sum(x(1, 1:100).*y(1, [1:100] +(n-1)));
end 
plot(t, abs(r))