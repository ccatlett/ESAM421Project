function dydt = TYCPer_ND(t, pop, params)
dydt = zeros(4,1);

Fxx = pop(1);
Mxy = pop(2);
Myy = pop(3);
Fyy = pop(4);


B = params(1);
D = params(2);
K = params(3);
A = params(4);
omega = params(5);

gamma = B*K/(2*D);
Ahat = A/(D*K);
omegahat = omega/D;

N = sum(pop);
L = 1-N;

dydt(1) = gamma*Fxx*Mxy*L-Fxx;
dydt(2) = gamma*(Fxx*Mxy + Fyy*Mxy + 2*Fxx*Myy)*L - Mxy;
dydt(3) = gamma*(Fyy*Mxy + 2*Fyy*Myy)*L - Myy;
dydt(4) = Ahat*sin(t)^2- Fyy;
end