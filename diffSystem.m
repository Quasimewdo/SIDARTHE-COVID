function [dS, dI, dD, dA, dR, dT, dH, dE, dV] = diffSystem(t, initialParameters, changeParameters, vac, VACC, VACCmodified, Y0)
    [t, S, I, D, A, R, T, H, E, V] = solver(initialParameters, vac, VACC, t, Y0);
    [t, SP, IP, DP, AP, RP, TP, HP, EP, VP] = solver(changeParameters, vac, VACCmodified, t, Y0);
    
    dS = SP - S;
    dI = IP - I;
    dD = DP - D;
    dA = AP - A;
    dR = RP - R;
    dT = TP - T;
    dH = HP - H;
    dE = EP - E;
    dV = VP - V;

end