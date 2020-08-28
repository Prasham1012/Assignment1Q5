
n = (tf - t0) / dT; 

X = zeros(3,n+1);  
Xod45 = zeros(3,n+1); 
Xrk4 = zeros(3,n+1); 

U = zeros(n+1,1);
T = zeros(n+1,1);   



X(:,1) = X0;
Xrk4(:,1) = X0;
Xode45(:,1) = X0;



for i=1:1:n+1
    U(i) = 2 + 3 * sin( 0.01 * (i-1));
    T(i) = t0 + (i-1) * dT;
end