% State-space matrices
A = [0 1 0;
     0 -b/J Kt/J;
     0 -Ke/L -R/L];

B = [0; 0; 1/L];
C = [1 0 0]; % Output is angular position
D = 0;

% Create state-space system
sys_ss = ss(A, B, C, D);

% Display the state-space system
disp('State-Space Model:');
sys_ss

% Simulate response to step input
figure;
step(sys_ss);
title('Step Response of State-Space Servo Motor');
grid on;
