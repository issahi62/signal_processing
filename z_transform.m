[x,y] = meshgrid(-2:.02:2); 
z= x+1i*y; 
H = (.2*z.^2 +.4*z +.2)./(z.^2-.2); 
figure(1) 
subplot(221)
surf(x,y,abs(H))
xlabel('Real part'); 
ylabel('Imaginary part')

subplot(222) 
surf(x,y,20*log10(abs(H)));
xlabel('Real part'); 
ylabel('Imaginary part')

Z = roots([.2 .4 .2]); 
P= roots([1 0 -.2]); 

figure(2); zplane(Z,P)


