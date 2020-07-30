function  dx = sys(t, x)
   A = [0,1,0;0,0,1;-1,-1,2]; B = [0;0;1];  
   u = 2 + 3*sin(0.01*t)
   dx = A*x + B*u;
end