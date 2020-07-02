clear all; close all; clc;
%%
%Operating frequency (Hz)
fc = 77.0e9;

%Transmitted power (W)
Pt = 3e-3;

%Antenna Gain (linear)
G =  10000;

%Minimum Detectable Power
Ps = 1e-10;

%RCS of a car
RCS = 100;

%Speed of light
c = 3*10^8;

%Wavelength
lambda = c/fc;
%% 
% R = (Transmitted Power from Radar * Gain of the Transmit/Receive Antenna ^2 
% * Wavelength of the signal^2 * radar cross section / (Minimum received power 
% radar can detect * (4*pi)^3))^(-4)

Range_of_Radar = ((Pt * G^2 * lambda^2 * RCS)/(Ps *(4*pi)^3))^(1/4);
disp(Range_of_Radar)