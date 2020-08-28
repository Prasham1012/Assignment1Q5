main;
%discrete time model
%X(k+1) = phi * X(k) + tau * U(k)

for i=1:1:n
    X(:,i+1) = phi * X(:,i) + tau * U(i, 1);
end

plot (T(:,1), X(1,:), T(:,1), X(2,:), T(:,1), X(3,:))
