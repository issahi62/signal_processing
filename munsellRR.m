load munsell.mat;
R = munsell*munsell';
[V,D] = eig(R);
d = diag(D);
[n,m] = sort(d);
% flipping in descending order
% d is the eigen values 
d = d(flipud(m));
% v = eigen vectors 
V = V(:,flipud(m)');

% fidelity value k
K = sum(d(1:10))/sum(d)*100;

% principal component of the vector
Y = V(:,1:10)'*munsell;

% former image with principal component analysis 
munsellR1 = V(:,1:10)*Y;

% former image with approximate data from vectors
munsellR2 = V(:,1:10)*V(:,1:10)'*munsell;

% mean square error 

msqerror = (sum(sum(abs(munsellR2-munsell).^2))/size(munsell, 2))*100;

figure(1); 
subplot(221); imagesc(munsellR1);
subplot(222); imagesc(munsellR2);
subplot(223); imagesc(munsell);