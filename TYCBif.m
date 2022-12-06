%% Plots stable branch of bif diagram for Formulation (1)

figure; hold on

Fxx_out = [];

for a = 0:.01:5
    % Solve for variety of c
    pop0 = [100 100 0 10]/300;
    params = [.1 .1 300 a];
    tspan = linspace(0,1000);
    [t,sol] = ode15s(@(t,pop)TYC_ND(t,pop,params),tspan,pop0);

    % Collect results
    Fxx_out =  [Fxx_out sol(end, 1)];
end

plot(0:.01:5, Fxx_out, 'Color','#73A5C6', 'LineWidth', 4)

xlabel("c")
ylabel("F_{xx}")
fontsize(gcf, "scale", 1.20)
ylim([0 .5])
