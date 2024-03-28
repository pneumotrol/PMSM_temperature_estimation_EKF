% sampling period (s)
Ts = 0.01;

% equivalent capacitance
% C_ = [
%     mass2capacitance(1,100);
%     mass2capacitance(1,100);
%     mass2capacitance(1,100);
%     mass2capacitance(1,200);
%     ];

% equivalent resistance
% R_ = [
%     convection2resistance(0.1,20);
%     convection2resistance(0.1,20);
%     convection2resistance(0.1,20);
%     1/(1/convection2resistance(0.004,200)+1/conduction2resistance(0.002,0.1,80));
%     1/(1/convection2resistance(0.004,200)+1/conduction2resistance(0.002,0.1,80));
%     1/(1/convection2resistance(0.004,200)+1/conduction2resistance(0.002,0.1,80));
%     convection2resistance(0.02,200);
%     convection2resistance(0.02,200);
%     convection2resistance(0.02,200);
%     ];

% identified capacitance (by identify_thermal_network.mlx)
C_ = [
    101.204923928551;
    101.204923928551;
    101.204923928551;
    200.720939457005;
    ];

% identified resistance (by identify_thermal_network.mlx)
R_ = [
    0.510878418907317;
    0.510878418907317;
    0.510878418907317;
    0.395187618968632;
    0.395187618968632;
    0.395187618968632;
    0.251097394911089;
    0.251097394911089;
    0.251097394911089;
    ];

% copper loss model parameters
R_0_ = 0.013;
T_0_ = 298.15;
alpha_ = 3.93e-3;

% iron loss model parameters
ratio_rotor_ = 0.75;
Qiron_c = [0.8031,0.0041,0.0016,4.3449e-07];

% EKF parameters
EKF_x0 = [293.15;293.15;293.15;293.15];
EKF_P0 = diag([10^2,10^2,10^2,10^2]);
EKF_Q = diag([0.01^2,0.01^2,0.01^2,0.01^2]);
EKF_R = diag([0.5^2]);

% complementary filter
% low freq gain:    1/(1+exp(4*k*(f-fc)))
% high freq gain:   1/(1+exp(-4*k*(f-fc)))
CF_k = 1; % gradient (-)
CF_fc = 1/(20*Ts); % cutoff frequency (Hz)
