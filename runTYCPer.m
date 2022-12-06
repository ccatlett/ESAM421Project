
%% Creates heatmap of longtime behavior for dimensional A x dimensional omega

pop0 = [100 100 0 5]/300;
mat_out = [];
for a = 0:1:15
    mat_out_row = [];
    for omega = 0:.02:1
    params = [.1 .1 300 a omega];
    tspan = linspace(0,600);
    [t,sol] = ode15s(@(t,pop)TYCPer(t,pop,params), tspan, pop0);

    mat_out_row = [mat_out_row, sol(end, 1)];
    end
    mat_out = [mat_out; mat_out_row];
end
%% Plotting

xvalues = 0:.02:1;
yvalues = 0:1:15;
heatmap(xvalues, yvalues, mat_out)

xlabel("\omega")
ylabel("A")
fontsize(gcf, "scale", .7)
