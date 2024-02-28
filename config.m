close all;
clear;
clc;

% Simulation parameters
dt = 50e-6;
dt_speed_control = 0.001;
dt_display = 0.02;

% Motor controller parameters
max_torque = 220;
max_power = 50e3;
w_max_power = max_power/max_torque;

% Generate representative tabulated flux data. This data is linear with
% current and rotor angle, but block supports any nonlinear flux
% distribution.
N = 6;
PM = 0.1;
Ls = 0.0002;
Lm = 0.00002;
Ms = 0.00002;
Rs = 0.013;
iVec_th = [-250 0 250];         % Current vector, i
xVec_th = linspace(0,360/N,61); % Rotor angle vector, theta
xVecRad = pi/180*xVec_th;
ni = length(iVec_th);
nx = length(xVecRad);
row = Ls + Lm*cos(2*N*xVecRad);
dfluxdiMatrix = [row;row;row]; % Flux linkage partial derivative wrt current, dPhi(i,theta)/di
row_PM = -N*PM*sin(N*xVecRad);
row_RM = -2*N*Lm*sin(2*N*xVecRad);
dfluxdxMatrix = [row_PM+row_RM*iVec_th(1);row_PM;row_PM+row_RM*iVec_th(3)]; % Flux linkage partial derivative wrt angle, dPhi(i,theta)/dtheta

% iron loss parameters
losses_oc = [50,30,10];
losses_sc = [30,20,10];
f_losses = 100;
Isc_losses = 50;

% copper loss parameters
Tmeas = 298.15;
alpha = 3.93e-3;
alpha_flux = 0;

% thermal parameters
stator_thermal_mass = 100;
stator_initial_temperatures = [298.15;298.15;298.15];
rotor_thermal_mass = 200;
rotor_initial_temperatures = 298.15;

ratio_rotor = 0.75;
Rm_percent_rotor = ratio_rotor*100;
Rd_percent_rotor = ratio_rotor*100;

% controller parameters
controller_parameters();
