%% ODE system for non-dimensionalized TYC (Formulation 1)

function dydt = TYC(t, pop, params)
% Make states
dydt = zeros(4,1);

Fxx = pop(1);
Mxy = pop(2);
Myy = pop(3);
Fyy = pop(4);

% Make params
B = params(1);
D = params(2);
K = params(3);
mu = params(4);

N = sum(pop);
L = 1-N/K;

% Eval at timestep
dydt(1) = 0.5*B*Fxx*Mxy*L- D*Fxx;
dydt(2) = B*(0.5*Fxx*Mxy + 0.5*Fyy*Mxy + Fxx*Myy)*L - D*Mxy;
dydt(3) = B*(0.5*Fyy*Mxy + Fyy*Myy)*L - D*Myy;
dydt(4) = mu - D*Fyy;
end