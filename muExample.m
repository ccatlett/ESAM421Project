% Plot examples of mu(t) for Forumlation (2)

hold on;
fplot(@(x) 3*sin(.5*x)^2, [0,25], 'Color','#73A5C6', 'LineWidth', 2)
fplot(@(x) 2*sin((1/4)*x)^2, [0,25], 'Color','r', 'LineWidth', 2)
legend('A=3, \omega=0.5','A=2, \omega=0.25')

xlabel("t")
ylabel("\mu(t)")
fontsize(gcf, "scale", 1.20)
