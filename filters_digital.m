n = 0:1000; 
x = 2*sin(pi/20*n) + 4*sin(pi/350*n) +.5*randn(size(n)); 
figure(1);
subplot(221); plot(n,x) 
k = [0:200]; 
h1= sin(pi/5*(k-100))./(pi*(k-100)); 
h1(101) = 1/5; 
h1=h1/sum(h1); 
subplot(222); plot(k,h1); 

subplot(223); y = conv(x,h1); plot(n,y(1:1001), 'r'); 

u = [zeros(1,100), ones(1,901)]; 
s = conv(u, h1); subplot(224); plot(n,u,'k',n,s(1:1001), 'g');

h2 = sin(pi/50*(k-100))./(pi*(k-100)); h2(101)=1/50; 
h2= h2/sum(h2); 
figure(2); subplot(221); plot(k,h2)
subplot(222); y = conv(x,h2); plot(n,y(1:1001),'r')
s2 = conv(u,h2); subplot(223); plot(n,u, 'k', n,s2(1:1001),'g'); 

delta = [zeros(1,100), 1, zeros(1,100)]; 
h4 = delta-h1; 
figure(3); subplot(221); plot(k, h4);
subplot(222); y=conv(x,h4); plot(n, y(1:1001), 'r')

