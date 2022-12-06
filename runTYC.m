
%% General wrapper to run and plot TYC Formulation (1)

figure; hold on

for a = 0:10:800
    % Initialize pop, params
    pop0 = [100 100 0 a]/300; % Scale for ND model
    params = [.1 .1 300 0];
    tspan = linspace(0, 600);

    % Solve ODE
    [t,sol] = ode15s(@(t,pop)TYC_ND(t,pop,params),tspan,pop0);

     plot(t, sol(:, 1), 'Color','#73A5C6', 'LineWidth',2)
end


xlabel("t")
ylabel("F_{xx}")
fontsize(gcf, "scale", 1.20)
xlim([0 30])
ylim([0 .55])

