r1= rand(1, 10000);
hist(r1, 30);
r2 = rand(1,10000);
hist (r1+r2, 30);
hist(r1+r2, 30);
hist(r1+r2, 30);
r = zeros(1, 10000); for n=1:20; r=r+rand(1,10000); end; hist(r,30)
r = zeros(1, 10000); for n=1:100; r=r+rand(1,10000); end; hist(r,30)