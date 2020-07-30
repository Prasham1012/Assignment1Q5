function[position] = rungeKutta(t0, x0, t, h)

n = (t - t0)/h;
time = zeros(3,501)
position = zeros(3,501);
for j=1:n+1
position(:,j)=[0;0;0];
end
position(:,1) = x0;
for i = 2:n+1

k1 = h * dxdt(t0, position(:,i-1));
k2 = h * dxdt(t0 + 0.5 * h, position(:,i-1) + 0.5 * k1);
k3 = h * dxdt(t0 + 0.5 * h, position(:,i-1) + 0.5 * k2);
k4 = h * dxdt(t0 + h, position(:,i-1) + k3);
position(:,i) = position(:,i-1) + (1.0 / 6.0)*(k1 + 2 * k2 + 2 * k3 + k4);
t0 = t0 + h;
end