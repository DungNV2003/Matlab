[t, solution] = ode45(@solRCLP, [0, 3], 0);
[t2, solution2] = ode23(@solRCLP, [0, 3], 0);
plot(t, solution, 'r-', t2, solution2, 'b-')
xlabel('thời gian / s')
ylabel('Biên độ / V')
legend('ode45', 'ode23')

function udot = solRCLP(t, u)
R = 10000; % Điện trở R
C = 4.7e-6; % Điện dung C
ustep = @(t) 1; % Điện áp bước
udot = -(1 / (R * C)) * u + (1 / (R * C)) * ustep(t);
end
