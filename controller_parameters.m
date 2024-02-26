% sampling period (s)
Ts = 0.01;

% equivalent capacitance
C_ = [
    mass2capacitance(1,100);
    mass2capacitance(1,100);
    mass2capacitance(1,100);
    mass2capacitance(1,200);
    ];

% equibalent resistance
R_ = [
    convection2resistance(0.1,20);
    convection2resistance(0.1,20);
    convection2resistance(0.1,20);
    1/(1/convection2resistance(0.004,200)+1/conduction2resistance(0.002,0.1,80));
    1/(1/convection2resistance(0.004,200)+1/conduction2resistance(0.002,0.1,80));
    1/(1/convection2resistance(0.004,200)+1/conduction2resistance(0.002,0.1,80));
    convection2resistance(0.02,200);
    convection2resistance(0.02,200);
    convection2resistance(0.02,200);
    ];

% copper loss model parameters
T_0_ = 298.15;
R_0_ = 0.013;
alpha_ = 3.93e-3;

% iron loss model parameters
ratio_rotor_ = 0.75;
ch = 1.3743e-02;
cJ = 5.0690e-07;
cex = -3.9408e-05;

% EKF parameters
EKF_x0 = [293.15;293.15;293.15;293.15];
EKF_Sx = diag([0.01^2,0.01^2,0.01^2,0.01^2]);
EKF_Sy = diag([0.5^2]);

% complementary filter
% low freq gain:    1/(1+exp(4*k*(f-fc)))
% high freq gain:   1/(1+exp(-4*k*(f-fc)))
CF_k = 1; % gradient (-)
CF_fc = 1/(20*Ts); % cutoff frequency (Hz)
