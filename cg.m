% Bài 27
[t, solution] = ode45(@solRCLP, [0, 3], 0);
[t2, solution2] = ode23(@solRCLP, [0, 3], 0);
plot(t, solution(:,1), 'r-', t2, solution2(:,1), 'b-')
xlabel('Thời gian / s')
ylabel('Biên độ / V')

% Hàm "solRCLP"
function [udot] = solRCLP(t, u)
    R = 10000; % Điện trở R
    C = 4.7e-6; % Thay đổi cách biểu diễn số học
    f = 1;
    ustep_value = ustep(t); % Calling step function
    udot = -(1/(R*C)) * u + (1/(R*C)) * ustep_value;
end

% Hàm định nghĩa hàm bước
function step_value = ustep(t)
    if t >= 0
        step_value = 1;
    else
        step_value = 0;
    end
end
