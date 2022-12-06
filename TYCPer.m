%% Dimensional TYC model with sinusoidal forcing term (Formulation (2))

function dydt = TYCPer(t, pop, params)
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

N = sum(pop);
L = 1-N/K;

dydt(1) = 0.5*B*Fxx*Mxy*L- D*Fxx;
dydt(2) = B*(0.5*Fxx*Mxy + 0.5*Fyy*Mxy + Fxx*Myy)*L - D*Mxy;
dydt(3) = B*(0.5*Fyy*Mxy + Fyy*Myy)*L - D*Myy;
dydt(4) = A*sin(omega*t)^2- D*Fyy;
end