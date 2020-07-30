function [term] = dxdt( t,x)
 term = [0,1,0;0,0,1;-1,-1,-2]*x + [0;0;1].*(2+3*sin(0.01*t))
end



