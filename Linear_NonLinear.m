A1 = [0,1,0;0,0,1;-1,-1,2];
B1 = [0;0;1];
T = 0.1;
phi = expm(A1*T);
I = [1,0,0;0,1,0;0,0,1];
tau = (phi-I)*inv(A1)*B1;
x0 = [0;0;2]; 
t=50;
t0=0;


n = (t - t0)/T;
initialposition = zeros(3,501);
for j=1:n+1
initialposition(:,j)=[0;0;0];
end
initialposition(:,1) = x0;
for i = 2:n+1
initialposition(:,i) = phi*initialposition(:,i-1) + tau*(2+3*sin(0.01*i));
t0 = t0 + T;
end







    

