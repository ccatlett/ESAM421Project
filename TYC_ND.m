%% ODE system for non-dimensionalized TYC (Formulation 1)

function dydt = TYC_ND(t,pop, params)
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

gamma = B*K/(2*D);
muhat = mu/(D*K);

N = sum(pop);
L = 1-N;

% Eval at timestep
dydt(1) = gamma*Fxx*Mxy*L-Fxx;
dydt(2) = gamma*(Fxx*Mxy + Fyy*Mxy + 2*Fxx*Myy)*L - Mxy;
dydt(3) = gamma*(Fyy*Mxy + 2*Fyy*Myy)*L - Myy;
dydt(4) = muhat - Fyy;
end