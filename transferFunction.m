% Define motor parameters
L = 0.5;    % Inductance (H)
R = 1.0;    % Resistance (Ohm)
J = 0.01;   % Inertia (kg.m^2)
b = 0.1;    % Damping coefficient (N.m.s)
Ke = 0.01;  % Back EMF constant (V/rad/s)
Kt = 0.01;  % Torque constant (N.m/A)

% Define transfer function
s = tf('s');
G = Kt / (J*L*s^3 + (J*R + b*L)*s^2 + (b*R + Ke*Kt)*s);

% Display transfer function
disp('Open-loop Transfer Function:');
G

% Step response to visualize system behavior
figure;
step(G);
title('Step Response of Open-Loop Servo Motor');
grid on;
