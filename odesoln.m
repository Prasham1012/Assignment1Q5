main;

t=t0:dT:tf;
[t,x] = ode45(@f, t, X0);
plot(t,x);

function [dx] = f(t,x)
    diffequation;   
end