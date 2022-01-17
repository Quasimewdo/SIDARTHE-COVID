%% Initial conditions
pop = 60000000;
I0 = 200/pop;
D0 = 20/pop;
A0 = 1/pop;
R0 = 2/pop;
T0 = 0;
H0 = 00;
E0 = 0;
V0 = 0;
S0 = (60000000-I0-D0-A0-R0-T0)/pop; 

Y0 = [S0; I0; D0; A0; R0; T0; H0; E0; V0];