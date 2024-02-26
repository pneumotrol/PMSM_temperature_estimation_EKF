% sampling period (s)
Ts = 0.01;

% equivalent capacitance
C_ = [
    mass2capacitance(1,300);
    mass2capacitance(1,200);
    ];

% equibalent resistance
R_ = [
    convection2resistance(0.3,20);
    convection2resistance(0.06,200);
    ];

% copper loss model parameters
T_0_ = 298.15;
R_0_ = 0.013;
alpha_ = 3.93e-3;

% iron loss model parameters
ratio_rotor_ = 0.75;
ch = 1.3706e-02;
cJ = 5.0740e-07;
cex = -3.9378e-05;

% EKF parameters
EKF_x0 = [273.15;273.15];
EKF_Sx = diag([0.01^2,0.01^2]);
EKF_Sy = diag([0.5^2]);

% complementary filter
% low freq gain:    1/(1+exp(4*k*(f-fc)))
% high freq gain:   1/(1+exp(-4*k*(f-fc)))
CF_k = 1; % gradient (-)
CF_fc = 1/(20*Ts); % cutoff frequency (Hz)
