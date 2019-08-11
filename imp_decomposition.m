n=[0:10]';
x=cos((pi/5)*n);
X = zeros(11,11); 
for k=1:11
    delta=zeros(size(n)); 
    delta(k)=1; 
    X(:,k)=x(k)*delta; 
end

% decomposed signal
stem(n,X(:,1), 'r', 'filled')
stem(n,X(:,2), 'r', 'filled')

% construction of original signal
stem(n,sum(X,2), 'r', 'filled')

% step decomposition 

clear X 

X(:,1) = x(1)*ones(size(n)); 

for k=2:11
    u=[zeros(k-1,1); ones(12-k,1)]; 
    X(:, k) = (x(k)-x(k-1))*u; 
end 

% decompostion by step signal 

stem(n,X(:,1), 'g', 'filled');
stem(n,X(:,2), 'g', 'filled');
stem(n,X(:,3), 'g', 'filled');

%construction of the signal again
stem(n, sum(X,2), 'g', 'filled');


    