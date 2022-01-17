clf
clearvars

%% Parameters

%Data
load_new_data

%parameters 43 values

load_parameters

%Time 44 days

%Vaccination function 44
vaccino = 1;

load_vaccination

%% Initial conditions
load_initial_conditions

%% Different system
x = [alpha6; beta; gamma; delta; epsilon; theta; zeta; eta; mu; nu; tau1; tau2; lambda; kappa; csi; rho; sigma];
[t, S, I, D, A, R, T, H, E, V] = solver(x, vac, vacc, t, Y0);

% Alpha Change
x_alphaP = [alpha7; beta; gamma; delta; epsilon; theta; zeta; eta; mu; nu; tau1; tau2; lambda; kappa; csi; rho; sigma];
[t, S_alphaP, I_alphaP, D_alphaP, A_alphaP, R_alphaP, T_alphaP, H_alphaP, E_alphaP, V_alphaP] = solver(x_alphaP, vac, vacc, t, Y0);

x_alphaM = [alpha8; beta; gamma; delta; epsilon; theta; zeta; eta; mu; nu; tau1; tau2; lambda; kappa; csi; rho; sigma];
[t, S_alphaM, I_alphaM, D_alphaM, A_alphaM, R_alphaM, T_alphaM, H_alphaM, E_alphaM, V_alphaM] = solver(x_alphaM, vac, vacc, t, Y0);

[S_alphaPD, I_alphaPD, D_alphaPD, A_alphaPD, R_alphaPD, T_alphaPD, H_alphaPD, E_alphaPD, V_alphaPD] = diffSystem(t, x, x_alphaP, vac, vacc, vacc, Y0);
[S_alphaMD, I_alphaMD, D_alphaMD, A_alphaMD, R_alphaMD, T_alphaMD, H_alphaMD, E_alphaMD, V_alphaMD] = diffSystem(t, x, x_alphaM, vac, vacc, vacc, Y0);

% Beta Change
x_betaP = [alpha6; beta2; gamma; delta; epsilon; theta; zeta; eta; mu; nu; tau1; tau2; lambda; kappa; csi; rho; sigma];
[t, S_betaP, I_betaP, D_betaP, A_betaP, R_betaP, T_betaP, H_betaP, E_betaP, V_betaP] = solver(x_betaP, vac, vacc, t, Y0);

x_betaM = [alpha6; beta3; gamma; delta; epsilon; theta; zeta; eta; mu; nu; tau1; tau2; lambda; kappa; csi; rho; sigma];
[t, S_betaM, I_betaM, D_betaM, A_betaM, R_betaM, T_betaM, H_betaM, E_betaM, V_betaM] = solver(x_betaM, vac, vacc, t, Y0);

[S_betaPD, I_betaPD, D_betaPD, A_betaPD, R_betaPD, T_betaPD, H_betaPD, E_betaPD, V_betaPD] = diffSystem(t, x, x_betaP, vac, vacc, vacc, Y0);
[S_betaMD, I_betaMD, D_betaMD, A_betaMD, R_betaMD, T_betaMD, H_betaMD, E_betaMD, V_betaMD] = diffSystem(t, x, x_betaM, vac, vacc, vacc, Y0);

% Gamma Change
x_gammaP = [alpha6; beta; gamma2; delta; epsilon; theta; zeta; eta; mu; nu; tau1; tau2; lambda; kappa; csi; rho; sigma];
[t, S_gammaP, I_gammaP, D_gammaP, A_gammaP, R_gammaP, T_gammaP, H_gammaP, E_gammaP, V_gammaP] = solver(x_gammaP, vac, vacc, t, Y0);

x_gammaM = [alpha6; beta; gamma3; delta; epsilon; theta; zeta; eta; mu; nu; tau1; tau2; lambda; kappa; csi; rho; sigma];
[t, S_gammaM, I_gammaM, D_gammaM, A_gammaM, R_gammaM, T_gammaM, H_gammaM, E_gammaM, V_gammaM] = solver(x_gammaM, vac, vacc, t, Y0);

[S_gammaPD, I_gammaPD, D_gammaPD, A_gammaPD, R_gammaPD, T_gammaPD, H_gammaPD, E_gammaPD, V_gammaPD] = diffSystem(t, x, x_gammaP, vac, vacc, vacc, Y0);
[S_gammaMD, I_gammaMD, D_gammaMD, A_gammaMD, R_gammaMD, T_gammaMD, H_gammaMD, E_gammaMD, V_gammaMD] = diffSystem(t, x, x_gammaM, vac, vacc, vacc, Y0);

% Delta Change
x_deltaP = [alpha6; beta; gamma; delta2; epsilon; theta; zeta; eta; mu; nu; tau1; tau2; lambda; kappa; csi; rho; sigma];
[t, S_deltaP, I_deltaP, D_deltaP, A_deltaP, R_deltaP, T_deltaP, H_deltaP, E_deltaP, V_deltaP] = solver(x_deltaP, vac, vacc, t, Y0);

x_deltaM = [alpha6; beta; gamma; delta3; epsilon; theta; zeta; eta; mu; nu; tau1; tau2; lambda; kappa; csi; rho; sigma];
[t, S_deltaM, I_deltaM, D_deltaM, A_deltaM, R_deltaM, T_deltaM, H_deltaM, E_deltaM, V_deltaM] = solver(x_deltaM, vac, vacc, t, Y0);

[S_deltaPD, I_deltaPD, D_deltaPD, A_deltaPD, R_deltaPD, T_deltaPD, H_deltaPD, E_deltaPD, V_deltaPD] = diffSystem(t, x, x_deltaP, vac, vacc, vacc, Y0);
[S_deltaMD, I_deltaMD, D_deltaMD, A_deltaMD, R_deltaMD, T_deltaMD, H_deltaMD, E_deltaMD, V_deltaMD] = diffSystem(t, x, x_deltaM, vac, vacc, vacc, Y0);

% Epsilon Change
x_epsilonP = [alpha6; beta; gamma; delta; epsilon2; theta; zeta; eta; mu; nu; tau1; tau2; lambda; kappa; csi; rho; sigma];
[t, S_epsilonP, I_epsilonP, D_epsilonP, A_epsilonP, R_epsilonP, T_epsilonP, H_epsilonP, E_epsilonP, V_epsilonP] = solver(x_epsilonP, vac, vacc, t, Y0);

x_epsilonM = [alpha6; beta; gamma; delta; epsilon3; theta; zeta; eta; mu; nu; tau1; tau2; lambda; kappa; csi; rho; sigma];
[t, S_epsilonM, I_epsilonM, D_epsilonM, A_epsilonM, R_epsilonM, T_epsilonM, H_epsilonM, E_epsilonM, V_epsilonM] = solver(x_epsilonM, vac, vacc, t, Y0);

[S_epsilonPD, I_epsilonPD, D_epsilonPD, A_epsilonPD, R_epsilonPD, T_epsilonPD, H_epsilonPD, E_epsilonPD, V_epsilonPD] = diffSystem(t, x, x_epsilonP, vac, vacc, vacc, Y0);
[S_epsilonMD, I_epsilonMD, D_epsilonMD, A_epsilonMD, R_epsilonMD, T_epsilonMD, H_epsilonMD, E_epsilonMD, V_epsilonMD] = diffSystem(t, x, x_epsilonM, vac, vacc, vacc, Y0);

% Theta Change
x_thetaP = [alpha6; beta; gamma; delta; epsilon; theta2; zeta; eta; mu; nu; tau1; tau2; lambda; kappa; csi; rho; sigma];
[t, S_thetaP, I_thetaP, D_thetaP, A_thetaP, R_thetaP, T_thetaP, H_thetaP, E_thetaP, V_thetaP] = solver(x_thetaP, vac, vacc, t, Y0);

x_thetaM = [alpha6; beta; gamma; delta; epsilon; theta3; zeta; eta; mu; nu; tau1; tau2; lambda; kappa; csi; rho; sigma];
[t, S_thetaM, I_thetaM, D_thetaM, A_thetaM, R_thetaM, T_thetaM, H_thetaM, E_thetaM, V_thetaM] = solver(x_thetaM, vac, vacc, t, Y0);

[S_thetaPD, I_thetaPD, D_thetaPD, A_thetaPD, R_thetaPD, T_thetaPD, H_thetaPD, E_thetaPD, V_thetaPD] = diffSystem(t, x, x_thetaP, vac, vacc, vacc, Y0);
[S_thetaMD, I_thetaMD, D_thetaMD, A_thetaMD, R_thetaMD, T_thetaMD, H_thetaMD, E_thetaMD, V_thetaMD] = diffSystem(t, x, x_thetaM, vac, vacc, vacc, Y0);

% Zeta Change
x_zetaP = [alpha6; beta; gamma; delta; epsilon; theta; zeta2; eta; mu; nu; tau1; tau2; lambda; kappa; csi; rho; sigma];
[t, S_zetaP, I_zetaP, D_zetaP, A_zetaP, R_zetaP, T_zetaP, H_zetaP, E_zetaP, V_zetaP] = solver(x_zetaP, vac, vacc, t, Y0);

x_zetaM = [alpha6; beta; gamma; delta; epsilon; theta; zeta3; eta; mu; nu; tau1; tau2; lambda; kappa; csi; rho; sigma];
[t, S_zetaM, I_zetaM, D_zetaM, A_zetaM, R_zetaM, T_zetaM, H_zetaM, E_zetaM, V_zetaM] = solver(x_zetaM, vac, vacc, t, Y0);

[S_zetaPD, I_zetaPD, D_zetaPD, A_zetaPD, R_zetaPD, T_zetaPD, H_zetaPD, E_zetaPD, V_zetaPD] = diffSystem(t, x, x_zetaP, vac, vacc, vacc, Y0);
[S_zetaMD, I_zetaMD, D_zetaMD, A_zetaMD, R_zetaMD, T_zetaMD, H_zetaMD, E_zetaMD, V_zetaMD] = diffSystem(t, x, x_zetaM, vac, vacc, vacc, Y0);

% Eta Change
x_etaP = [alpha6; beta; gamma; delta; epsilon; theta; zeta; eta2; mu; nu; tau1; tau2; lambda; kappa; csi; rho; sigma];
[t, S_etaP, I_etaP, D_etaP, A_etaP, R_etaP, T_etaP, H_etaP, E_etaP, V_etaP] = solver(x_etaP, vac, vacc, t, Y0);

x_etaM = [alpha6; beta; gamma; delta; epsilon; theta; zeta; eta3; mu; nu; tau1; tau2; lambda; kappa; csi; rho; sigma];
[t, S_etaM, I_etaM, D_etaM, A_etaM, R_etaM, T_etaM, H_etaM, E_etaM, V_etaM] = solver(x_etaM, vac, vacc, t, Y0);

[S_etaPD, I_etaPD, D_etaPD, A_etaPD, R_etaPD, T_etaPD, H_etaPD, E_etaPD, V_etaPD] = diffSystem(t, x, x_etaP, vac, vacc, vacc, Y0);
[S_etaMD, I_etaMD, D_etaMD, A_etaMD, R_etaMD, T_etaMD, H_etaMD, E_etaMD, V_etaMD] = diffSystem(t, x, x_etaM, vac, vacc, vacc, Y0);

% Mu Change
x_muP = [alpha6; beta; gamma; delta; epsilon; theta; zeta; eta; mu2; nu; tau1; tau2; lambda; kappa; csi; rho; sigma];
[t, S_muP, I_muP, D_muP, A_muP, R_muP, T_muP, H_muP, E_muP, V_muP] = solver(x_muP, vac, vacc, t, Y0);

x_muM = [alpha6; beta; gamma; delta; epsilon; theta; zeta; eta; mu3; nu; tau1; tau2; lambda; kappa; csi; rho; sigma];
[t, S_muM, I_muM, D_muM, A_muM, R_muM, T_muM, H_muM, E_muM, V_muM] = solver(x_muM, vac, vacc, t, Y0);

[S_muPD, I_muPD, D_muPD, A_muPD, R_muPD, T_muPD, H_muPD, E_muPD, V_muPD] = diffSystem(t, x, x_muP, vac, vacc, vacc, Y0);
[S_muMD, I_muMD, D_muMD, A_muMD, R_muMD, T_muMD, H_muMD, E_muMD, V_muMD] = diffSystem(t, x, x_muM, vac, vacc, vacc, Y0);

% Nu Change
x_nuP = [alpha6; beta; gamma; delta; epsilon; theta; zeta; eta; mu; nu2; tau1; tau2; lambda; kappa; csi; rho; sigma];
[t, S_nuP, I_nuP, D_nuP, A_nuP, R_nuP, T_nuP, H_nuP, E_nuP, V_nuP] = solver(x_nuP, vac, vacc, t, Y0);

x_nuM = [alpha6; beta; gamma; delta; epsilon; theta; zeta; eta; mu; nu3; tau1; tau2; lambda; kappa; csi; rho; sigma];
[t, S_nuM, I_nuM, D_nuM, A_nuM, R_nuM, T_nuM, H_nuM, E_nuM, V_nuM] = solver(x_nuM, vac, vacc, t, Y0);

[S_nuPD, I_nuPD, D_nuPD, A_nuPD, R_nuPD, T_nuPD, H_nuPD, E_nuPD, V_nuPD] = diffSystem(t, x, x_nuP, vac, vacc, vacc, Y0);
[S_nuMD, I_nuMD, D_nuMD, A_nuMD, R_nuMD, T_nuMD, H_nuMD, E_nuMD, V_nuMD] = diffSystem(t, x, x_nuM, vac, vacc, vacc, Y0);

% Tau1 Change
x_tau1P = [alpha6; beta; gamma; delta; epsilon; theta; zeta; eta; mu; nu; tau12; tau2; lambda; kappa; csi; rho; sigma];
[t, S_tau1P, I_tau1P, D_tau1P, A_tau1P, R_tau1P, T_tau1P, H_tau1P, E_tau1P, V_tau1P] = solver(x_tau1P, vac, vacc, t, Y0);

x_tau1M = [alpha6; beta; gamma; delta; epsilon; theta; zeta; eta; mu; nu; tau13; tau2; lambda; kappa; csi; rho; sigma];
[t, S_tau1M, I_tau1M, D_tau1M, A_tau1M, R_tau1M, T_tau1M, H_tau1M, E_tau1M, V_tau1M] = solver(x_tau1M, vac, vacc, t, Y0);

[S_tau1PD, I_tau1PD, D_tau1PD, A_tau1PD, R_tau1PD, T_tau1PD, H_tau1PD, E_tau1PD, V_tau1PD] = diffSystem(t, x, x_tau1P, vac, vacc, vacc, Y0);
[S_tau1MD, I_tau1MD, D_tau1MD, A_tau1MD, R_tau1MD, T_tau1MD, H_tau1MD, E_tau1MD, V_tau1MD] = diffSystem(t, x, x_tau1M, vac, vacc, vacc, Y0);

% Tau2 Change
x_tau2P = [alpha6; beta; gamma; delta; epsilon; theta; zeta; eta; mu; nu; tau1; tau22; lambda; kappa; csi; rho; sigma];
[t, S_tau2P, I_tau2P, D_tau2P, A_tau2P, R_tau2P, T_tau2P, H_tau2P, E_tau2P, V_tau2P] = solver(x_tau2P, vac, vacc, t, Y0);

x_tau2M = [alpha6; beta; gamma; delta; epsilon; theta; zeta; eta; mu; nu; tau1; tau23; lambda; kappa; csi; rho; sigma];
[t, S_tau2M, I_tau2M, D_tau2M, A_tau2M, R_tau2M, T_tau2M, H_tau2M, E_tau2M, V_tau2M] = solver(x_tau2M, vac, vacc, t, Y0);

[S_tau2PD, I_tau2PD, D_tau2PD, A_tau2PD, R_tau2PD, T_tau2PD, H_tau2PD, E_tau2PD, V_tau2PD] = diffSystem(t, x, x_tau2P, vac, vacc, vacc, Y0);
[S_tau2MD, I_tau2MD, D_tau2MD, A_tau2MD, R_tau2MD, T_tau2MD, H_tau2MD, E_tau2MD, V_tau2MD] = diffSystem(t, x, x_tau2M, vac, vacc, vacc, Y0);

% Lambda Change
x_lambdaP = [alpha6; beta; gamma; delta; epsilon; theta; zeta; eta; mu; nu; tau1; tau2; lambda2; kappa; csi; rho; sigma];
[t, S_lambdaP, I_lambdaP, D_lambdaP, A_lambdaP, R_lambdaP, T_lambdaP, H_lambdaP, E_lambdaP, V_lambdaP] = solver(x_lambdaP, vac, vacc, t, Y0);

x_lambdaM = [alpha6; beta; gamma; delta; epsilon; theta; zeta; eta; mu; nu; tau1; tau2; lambda3; kappa; csi; rho; sigma];
[t, S_lambdaM, I_lambdaM, D_lambdaM, A_lambdaM, R_lambdaM, T_lambdaM, H_lambdaM, E_lambdaM, V_lambdaM] = solver(x_lambdaM, vac, vacc, t, Y0);

[S_lambdaPD, I_lambdaPD, D_lambdaPD, A_lambdaPD, R_lambdaPD, T_lambdaPD, H_lambdaPD, E_lambdaPD, V_lambdaPD] = diffSystem(t, x, x_lambdaP, vac, vacc, vacc, Y0);
[S_lambdaMD, I_lambdaMD, D_lambdaMD, A_lambdaMD, R_lambdaMD, T_lambdaMD, H_lambdaMD, E_lambdaMD, V_lambdaMD] = diffSystem(t, x, x_lambdaM, vac, vacc, vacc, Y0);

% Kappa Change
x_kappaP = [alpha6; beta; gamma; delta; epsilon; theta; zeta; eta; mu; nu; tau1; tau2; lambda; kappa2; csi; rho; sigma];
[t, S_kappaP, I_kappaP, D_kappaP, A_kappaP, R_kappaP, T_kappaP, H_kappaP, E_kappaP, V_kappaP] = solver(x_kappaP, vac, vacc, t, Y0);

x_kappaM = [alpha6; beta; gamma; delta; epsilon; theta; zeta; eta; mu; nu; tau1; tau2; lambda; kappa3; csi; rho; sigma];
[t, S_kappaM, I_kappaM, D_kappaM, A_kappaM, R_kappaM, T_kappaM, H_kappaM, E_kappaM, V_kappaM] = solver(x_kappaM, vac, vacc, t, Y0);

[S_kappaPD, I_kappaPD, D_kappaPD, A_kappaPD, R_kappaPD, T_kappaPD, H_kappaPD, E_kappaPD, V_kappaPD] = diffSystem(t, x, x_kappaP, vac, vacc, vacc, Y0);
[S_kappaMD, I_kappaMD, D_kappaMD, A_kappaMD, R_kappaMD, T_kappaMD, H_kappaMD, E_kappaMD, V_kappaMD] = diffSystem(t, x, x_kappaM, vac, vacc, vacc, Y0);

% Csi Change
x_csiP = [alpha6; beta; gamma; delta; epsilon; theta; zeta; eta; mu; nu; tau1; tau2; lambda; kappa; csi2; rho; sigma];
[t, S_csiP, I_csiP, D_csiP, A_csiP, R_csiP, T_csiP, H_csiP, E_csiP, V_csiP] = solver(x_csiP, vac, vacc, t, Y0);

x_csiM = [alpha6; beta; gamma; delta; epsilon; theta; zeta; eta; mu; nu; tau1; tau2; lambda; kappa; csi3; rho; sigma];
[t, S_csiM, I_csiM, D_csiM, A_csiM, R_csiM, T_csiM, H_csiM, E_csiM, V_csiM] = solver(x_csiM, vac, vacc, t, Y0);

[S_csiPD, I_csiPD, D_csiPD, A_csiPD, R_csiPD, T_csiPD, H_csiPD, E_csiPD, V_csiPD] = diffSystem(t, x, x_csiP, vac, vacc, vacc, Y0);
[S_csiMD, I_csiMD, D_csiMD, A_csiMD, R_csiMD, T_csiMD, H_csiMD, E_csiMD, V_csiMD] = diffSystem(t, x, x_csiM, vac, vacc, vacc, Y0);

% Rho Change
x_rhoP = [alpha6; beta; gamma; delta; epsilon; theta; zeta; eta; mu; nu; tau1; tau2; lambda; kappa; csi; rho2; sigma];
[t, S_rhoP, I_rhoP, D_rhoP, A_rhoP, R_rhoP, T_rhoP, H_rhoP, E_rhoP, V_rhoP] = solver(x_rhoP, vac, vacc, t, Y0);

x_rhoM = [alpha6; beta; gamma; delta; epsilon; theta; zeta; eta; mu; nu; tau1; tau2; lambda; kappa; csi; rho3; sigma];
[t, S_rhoM, I_rhoM, D_rhoM, A_rhoM, R_rhoM, T_rhoM, H_rhoM, E_rhoM, V_rhoM] = solver(x_rhoM, vac, vacc, t, Y0);

[S_rhoPD, I_rhoPD, D_rhoPD, A_rhoPD, R_rhoPD, T_rhoPD, H_rhoPD, E_rhoPD, V_rhoPD] = diffSystem(t, x, x_rhoP, vac, vacc, vacc, Y0);
[S_rhoMD, I_rhoMD, D_rhoMD, A_rhoMD, R_rhoMD, T_rhoMD, H_rhoMD, E_rhoMD, V_rhoMD] = diffSystem(t, x, x_rhoM, vac, vacc, vacc, Y0);

% Sigma Change
x_sigmaP = [alpha6; beta; gamma; delta; epsilon; theta; zeta; eta; mu; nu; tau1; tau2; lambda; kappa; csi; rho; sigma2];
[t, S_sigmaP, I_sigmaP, D_sigmaP, A_sigmaP, R_sigmaP, T_sigmaP, H_sigmaP, E_sigmaP, V_sigmaP] = solver(x_sigmaP, vac, vacc, t, Y0);

x_sigmaM = [alpha6; beta; gamma; delta; epsilon; theta; zeta; eta; mu; nu; tau1; tau2; lambda; kappa; csi; rho; sigma3];
[t, S_sigmaM, I_sigmaM, D_sigmaM, A_sigmaM, R_sigmaM, T_sigmaM, H_sigmaM, E_sigmaM, V_sigmaM] = solver(x_sigmaM, vac, vacc, t, Y0);

[S_sigmaPD, I_sigmaPD, D_sigmaPD, A_sigmaPD, R_sigmaPD, T_sigmaPD, H_sigmaPD, E_sigmaPD, V_sigmaPD] = diffSystem(t, x, x_sigmaP, vac, vacc, vacc, Y0);
[S_sigmaMD, I_sigmaMD, D_sigmaMD, A_sigmaMD, R_sigmaMD, T_sigmaMD, H_sigmaMD, E_sigmaMD, V_sigmaMD] = diffSystem(t, x, x_sigmaM, vac, vacc, vacc, Y0);

% Vacc Change
[t, S_vaccP, I_vaccP, D_vaccP, A_vaccP, R_vaccP, T_vaccP, H_vaccP, E_vaccP, V_vaccP] = solver(x, vac, vaccP, t, Y0);

[t, S_vaccM, I_vaccM, D_vaccM, A_vaccM, R_vaccM, T_vaccM, H_vaccM, E_vaccM, V_vaccM] = solver(x, vac, vaccM, t, Y0);

[S_vaccPD, I_vaccPD, D_vaccPD, A_vaccPD, R_vaccPD, T_vaccPD, H_vaccPD, E_vaccPD, V_vaccPD] = diffSystem(t, x, x, vac, vacc, vaccP, Y0);
[S_vaccMD, I_vaccMD, D_vaccMD, A_vaccMD, R_vaccMD, T_vaccMD, H_vaccMD, E_vaccMD, V_vaccMD] = diffSystem(t, x, x, vac, vacc, vaccM, Y0);

%%
dE_alphaPdt = gradient(E_alphaPD(:))./gradient(t(:));
dE_betaPdt = gradient(E_betaPD(:))./gradient(t(:));
dE_gammaPdt = gradient(E_gammaPD(:))./gradient(t(:));
dE_deltaPdt = gradient(E_deltaPD(:))./gradient(t(:));
dE_epsilonPdt = gradient(E_epsilonPD(:))./gradient(t(:));
dE_thetaPdt = gradient(E_thetaPD(:))./gradient(t(:));
dE_zetaPdt = gradient(E_zetaPD(:))./gradient(t(:));
dE_etaPdt = gradient(E_etaPD(:))./gradient(t(:));
dE_muPdt = gradient(E_muPD(:))./gradient(t(:));
dE_nuPdt = gradient(E_nuPD(:))./gradient(t(:));
dE_tau1Pdt = gradient(E_tau1PD(:))./gradient(t(:));
dE_tau2Pdt = gradient(E_tau2PD(:))./gradient(t(:));
dE_lambdaPdt = gradient(E_lambdaPD(:))./gradient(t(:));
dE_kappaPdt = gradient(E_kappaPD(:))./gradient(t(:));
dE_csiPdt = gradient(E_csiPD(:))./gradient(t(:));
dE_rhoPdt = gradient(E_rhoPD(:))./gradient(t(:));
dE_sigmaPdt = gradient(E_sigmaPD(:))./gradient(t(:));
dE_vaccPdt = gradient(E_vaccPD(:))./gradient(t(:));

dE_alphaMdt = gradient(E_alphaMD(:))./gradient(t(:));
dE_betaMdt = gradient(E_betaMD(:))./gradient(t(:));
dE_gammaMdt = gradient(E_gammaMD(:))./gradient(t(:));
dE_deltaMdt = gradient(E_deltaMD(:))./gradient(t(:));
dE_epsilonMdt = gradient(E_epsilonMD(:))./gradient(t(:));
dE_thetaMdt = gradient(E_thetaMD(:))./gradient(t(:));
dE_zetaMdt = gradient(E_zetaMD(:))./gradient(t(:));
dE_etaMdt = gradient(E_etaMD(:))./gradient(t(:));
dE_muMdt = gradient(E_muMD(:))./gradient(t(:));
dE_nuMdt = gradient(E_nuMD(:))./gradient(t(:));
dE_tau1Mdt = gradient(E_tau1MD(:))./gradient(t(:));
dE_tau2Mdt = gradient(E_tau2MD(:))./gradient(t(:));
dE_lambdaMdt = gradient(E_lambdaMD(:))./gradient(t(:));
dE_kappaMdt = gradient(E_kappaMD(:))./gradient(t(:));
dE_csiMdt = gradient(E_csiMD(:))./gradient(t(:));
dE_rhoMdt = gradient(E_rhoMD(:))./gradient(t(:));
dE_sigmaMdt = gradient(E_sigmaMD(:))./gradient(t(:));
dE_vaccMdt = gradient(E_vaccMD(:))./gradient(t(:));

%%
figure(1)
subplot(2, 1, 1)
plot(t, R_alphaPD+T_alphaPD+D_alphaPD)
hold on
plot(t, R_betaPD+T_betaPD+D_betaPD, '*')
plot(t, R_gammaPD+T_gammaPD+D_gammaPD, '.')
plot(t, R_deltaPD+T_deltaPD+D_deltaPD, '+')
plot(t, R_epsilonPD+T_epsilonPD+D_epsilonPD, '--')
plot(t, R_thetaPD+T_thetaPD+D_thetaPD)
plot(t, R_zetaPD+T_zetaPD+D_zetaPD, '*')
plot(t, R_etaPD+T_etaPD+D_etaPD, '.')
plot(t, R_muPD+T_muPD+D_muPD, '+')
plot(t, R_nuPD+T_nuPD+D_nuPD, '--')
plot(t, R_tau1PD+T_tau1PD+D_tau1PD)
plot(t, R_tau2PD+T_tau2PD+D_tau2PD, '*')
plot(t, R_lambdaPD+T_lambdaPD+D_lambdaPD, '--')
plot(t, R_kappaPD+T_kappaPD+D_kappaPD, '+')
plot(t, R_csiPD+T_csiPD+D_csiPD, '--')
plot(t, R_rhoPD+T_rhoPD+D_rhoPD)
plot(t, R_sigmaPD+T_sigmaPD+D_sigmaPD, '*')
plot(t, R_vaccPD+T_vaccPD+D_vaccPD, '--')
%plot(t, R_alphaPD+T_alphaPD)
%plot(t, T_alphaPD)
%plot(t, E_alphaPD)
legend("alpha", "beta", "gamma", "delta", "epsilon", "theta", "zeta", "eta", "mu", "nu", "tau1", "tau2", "lambda", "kappa", "csi", "rho", "sigma", "vacc")
title("Sensitivity of Active Cases regarding different parameters with Positive Changes")

subplot(2, 1, 2)
plot(t, R_alphaMD+T_alphaMD+D_alphaMD)
hold on
plot(t, R_betaMD+T_betaMD+D_betaMD, '*')
plot(t, R_gammaMD+T_gammaMD+D_gammaMD, '.')
plot(t, R_deltaMD+T_deltaMD+D_deltaMD, '+')
plot(t, R_epsilonMD+T_epsilonMD+D_epsilonMD, '--')
plot(t, R_thetaMD+T_thetaMD+D_thetaMD)
plot(t, R_zetaMD+T_zetaMD+D_zetaMD, '*')
plot(t, R_etaMD+T_etaMD+D_etaMD, '.')
plot(t, R_muMD+T_muMD+D_muMD, '+')
plot(t, R_nuMD+T_nuMD+D_nuMD, '--')
plot(t, R_tau1MD+T_tau1MD+D_tau1MD)
plot(t, R_tau2MD+T_tau2MD+D_tau2MD, '*')
plot(t, R_lambdaMD+T_lambdaMD+D_lambdaMD, '--')
plot(t, R_kappaMD+T_kappaMD+D_kappaMD, '+')
plot(t, R_csiMD+T_csiMD+D_csiMD, '--')
plot(t, R_rhoMD+T_rhoMD+D_rhoMD)
plot(t, R_sigmaMD+T_sigmaMD+D_sigmaMD, '*')
plot(t, R_vaccMD+T_vaccMD+D_vaccMD, '--')
legend("alpha", "beta", "gamma", "delta", "epsilon", "theta", "zeta", "eta", "mu", "nu", "tau1", "tau2", "lambda", "kappa", "csi", "rho", "sigma", "vacc")
title("Sensitivity of Active Cases regarding different parameters with Negative Changes")


%%
figure(2)
subplot(2, 1, 1)
plot(t, R_alphaPD+T_alphaPD)
hold on
plot(t, R_betaPD+T_betaPD, '*')
plot(t, R_gammaPD+T_gammaPD, '.')
plot(t, R_deltaPD+T_deltaPD, '+')
plot(t, R_epsilonPD+T_epsilonPD, '--')
plot(t, R_thetaPD+T_thetaPD)
plot(t, R_zetaPD+T_zetaPD, '*')
plot(t, R_etaPD+T_etaPD, '.')
plot(t, R_muPD+T_muPD, '+')
plot(t, R_nuPD+T_nuPD, '--')
plot(t, R_tau1PD+T_tau1PD)
plot(t, R_tau2PD+T_tau2PD, '*')
plot(t, R_lambdaPD+T_lambdaPD, '--')
plot(t, R_kappaPD+T_kappaPD, '+')
plot(t, R_csiPD+T_csiPD, '--')
plot(t, R_rhoPD+T_rhoPD)
plot(t, R_sigmaPD+T_sigmaPD, '*')
plot(t, R_vaccPD+T_vaccPD, '--')
legend("alpha", "beta", "gamma", "delta", "epsilon", "theta", "zeta", "eta", "mu", "nu", "tau1", "tau2", "lambda", "kappa", "csi", "rho", "sigma", "vacc")
title("Sensitivity of Hospital Occupancy regarding different parameters with Positive Changes")

subplot(2, 1, 2)
plot(t, R_alphaMD+T_alphaMD)
hold on
plot(t, R_betaMD+T_betaMD, '*')
plot(t, R_gammaMD+T_gammaMD, '.')
plot(t, R_deltaMD+T_deltaMD, '+')
plot(t, R_epsilonMD+T_epsilonMD, '--')
plot(t, R_thetaMD+T_thetaMD)
plot(t, R_zetaMD+T_zetaMD, '*')
plot(t, R_etaMD+T_etaMD, '.')
plot(t, R_muMD+T_muMD, '+')
plot(t, R_nuMD+T_nuMD, '--')
plot(t, R_tau1MD+T_tau1MD)
plot(t, R_tau2MD+T_tau2MD, '*')
plot(t, R_lambdaMD+T_lambdaMD, '--')
plot(t, R_kappaMD+T_kappaMD, '+')
plot(t, R_csiMD+T_csiMD, '--')
plot(t, R_rhoMD+T_rhoMD)
plot(t, R_sigmaMD+T_sigmaMD, '*')
plot(t, R_vaccMD+T_vaccMD, '--')
legend("alpha", "beta", "gamma", "delta", "epsilon", "theta", "zeta", "eta", "mu", "nu", "tau1", "tau2", "lambda", "kappa", "csi", "rho", "sigma", "vacc")
title("Sensitivity of Hospital Occupancy regarding different parameters with Negative Changes")

%%
figure(3)
subplot(2, 1, 1)
plot(t, T_alphaPD)
hold on
plot(t, T_betaPD, '*')
plot(t, T_gammaPD, '.')
plot(t, T_deltaPD, '+')
plot(t, T_epsilonPD, '--')
plot(t, T_thetaPD)
plot(t, T_zetaPD, '*')
plot(t, T_etaPD, '.')
plot(t, T_muPD, '+')
plot(t, T_nuPD, '--')
plot(t, T_tau1PD)
plot(t, T_tau2PD, '*')
plot(t, T_lambdaPD, '--')
plot(t, T_kappaPD, '+')
plot(t, T_csiPD, '--')
plot(t, T_rhoPD)
plot(t, T_sigmaPD, '*')
plot(t, T_vaccPD, '--')
legend("alpha", "beta", "gamma", "delta", "epsilon", "theta", "zeta", "eta", "mu", "nu", "tau1", "tau2", "lambda", "kappa", "csi", "rho", "sigma", "vacc")
title("Sensitivity of ICU Occupancy regarding different parameters with Positive Changes")

subplot(2, 1, 2)
plot(t, T_alphaMD)
hold on
plot(t, T_betaMD, '*')
plot(t, T_gammaMD, '.')
plot(t, T_deltaMD, '+')
plot(t, T_epsilonMD, '--')
plot(t, T_thetaMD)
plot(t, T_zetaMD, '*')
plot(t, T_etaMD, '.')
plot(t, T_muMD, '+')
plot(t, T_nuMD, '--')
plot(t, T_tau1MD)
plot(t, T_tau2MD, '*')
plot(t, T_lambdaMD, '--')
plot(t, T_kappaMD, '+')
plot(t, T_csiMD, '--')
plot(t, T_rhoMD)
plot(t, T_sigmaMD, '*')
plot(t, T_vaccMD, '--')
legend("alpha", "beta", "gamma", "delta", "epsilon", "theta", "zeta", "eta", "mu", "nu", "tau1", "tau2", "lambda", "kappa", "csi", "rho", "sigma", "vacc")
title("Sensitivity of ICU Occupancy regarding different parameters with Negative Changes")


%%
figure(4)
subplot(2, 1, 1)
plot(t, dE_alphaPdt)
hold on
plot(t, dE_betaPdt, "*")
plot(t, dE_gammaPdt, ".")
plot(t, dE_deltaPdt, "+")
plot(t, dE_epsilonPdt, "--")
plot(t, dE_thetaPdt)
plot(t, dE_zetaPdt, "*")
plot(t, dE_etaPdt, ".")
plot(t, dE_muPdt, "+")
plot(t, dE_nuPdt, "--")
plot(t, dE_tau1Pdt)
plot(t, dE_tau2Pdt, "*")
plot(t, dE_lambdaPdt, ".")
plot(t, dE_kappaPdt, "+")
plot(t, dE_csiPdt, "--")
plot(t, dE_rhoPdt)
plot(t, dE_sigmaPdt, "*")
plot(t, dE_vaccPdt, "--")
legend("alpha", "beta", "gamma", "delta", "epsilon", "theta", "zeta", "eta", "mu", "nu", "tau1", "tau2", "lambda", "kappa", "csi", "rho", "sigma", "vacc")
title("Sensitivity of Death regarding different parameters with Positive Changes")

subplot(2, 1, 2)
plot(t, dE_alphaMdt)
hold on
plot(t, dE_betaMdt, "*")
plot(t, dE_gammaMdt, ".")
plot(t, dE_deltaMdt, "+")
plot(t, dE_epsilonMdt, "--")
plot(t, dE_thetaMdt)
plot(t, dE_zetaMdt, "*")
plot(t, dE_etaMdt, ".")
plot(t, dE_muMdt, "+")
plot(t, dE_nuMdt, "--")
plot(t, dE_tau1Mdt)
plot(t, dE_tau2Mdt, "*")
plot(t, dE_lambdaMdt, ".")
plot(t, dE_kappaMdt, "+")
plot(t, dE_csiMdt, "--")
plot(t, dE_rhoMdt)
plot(t, dE_sigmaMdt, "*")
plot(t, dE_vaccMdt, "--")
legend("alpha", "beta", "gamma", "delta", "epsilon", "theta", "zeta", "eta", "mu", "nu", "tau1", "tau2", "lambda", "kappa", "csi", "rho", "sigma", "vacc")
title("Sensitivity of Death regarding different parameters with Negative Changes")


