n=0:100; 
x = sin(pi/7*n)+4*sin(pi/35*n) +.5*randn(size(n));

h1 = zeros(size(n)); h1(1)=1; 
h2 = .1*h1; 
h3 = 10*h1; 
h4 = zeros(size(n)); h4(5)=1;
h5 = zeros(size(n)); h5(1:2)=[1, -1];
h6= zeros(size(n)); h6(1:9)=[.5,-.2*exp(-.5*n(1:8))];
h7 = zeros(size(n)); h7(1:5)=1;

subplot(211); stem(n, x,'filled'); 
subplot(212); y=conv(x,h1); stem(n, y(1:101), 'r', 'filled'); 
subplot(212); y=conv(x,h7); stem(n, y(1:101), 'r', 'filled'); 

