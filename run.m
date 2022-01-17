clf
clearvars

%% Parameters


%Data
load_new_data

%parameters 45 values
load_parameters

%Vaccination function 46
vaccino = 1;
load_vaccination

%Initial conditions
load_initial_conditions

%% Solver
x1 = [alpha1; beta; gamma; delta; epsilon; theta; zeta; eta; mu; nu; tau1; tau2; lambda; kappa; csi; rho; sigma];
[t, S1, I1, D1, A1, R1, T1, H1, E1, V1] = solver(x1, vac, vacc, t, Y0);

x2 = [alpha2; beta; gamma; delta; epsilon; theta; zeta; eta; mu; nu; tau1; tau2; lambda; kappa; csi; rho; sigma];
[t, S2, I2, D2, A2, R2, T2, H2, E2, V2] = solver(x2, vac, vacc, t, Y0);

x3 = [alpha3; beta; gamma; delta; epsilon; theta; zeta; eta; mu; nu; tau1; tau2; lambda; kappa; csi; rho; sigma];
[t, S3, I3, D3, A3, R3, T3, H3, E3, V3] = solver(x3, vac, vacc, t, Y0);

x4 = [alpha4; beta; gamma; delta; epsilon; theta; zeta; eta; mu; nu; tau1; tau2; lambda; kappa; csi; rho; sigma];
[t, S4, I4, D4, A4, R4, T4, H4, E4, V4] = solver(x4, vac, vacc, t, Y0);

x5 = [alpha5; beta; gamma; delta; epsilon; theta; zeta; eta; mu; nu; tau1; tau2; lambda; kappa; csi; rho; sigma];
[t, S5, I5, D5, A5, R5, T5, H5, E5, V5] = solver(x5, vac, vacc, t, Y0);

x6 = [alpha6; beta; gamma; delta; epsilon; theta; zeta; eta; mu; nu; tau1; tau2; lambda; kappa; csi; rho; sigma];
[t, S6, I6, D6, A6, R6, T6, H6, E6, V6] = solver(x6, vac, vacc, t, Y0);



dE1dt = gradient(E1(:))./gradient(t(:));
dE2dt = gradient(E2(:))./gradient(t(:));
dE3dt = gradient(E3(:))./gradient(t(:));
dE4dt = gradient(E4(:))./gradient(t(:));
dE5dt = gradient(E5(:))./gradient(t(:));
dE6dt = gradient(E6(:))./gradient(t(:));


%% Evolution
startDate = datenum('02-24-2020');
endDate = datenum('05-24-2022');
xData = linspace(startDate, endDate, 12);


figure(1)
semilogy(t, (R6+T6+D6)*pop, 'b')
hold on

semilogy(POS, '+b')
semilogy(t, (R6+T6)*pop, 'r')
semilogy(OSP, '+r')
semilogy(t, T6*pop, 'g')
semilogy(ICU, '+g')
semilogy(t, dE6dt*pop, 'k')
semilogy(NEWDEATHS, '+k')
hold off

legend({'Active Cases', 'Real Active Cases', 'Hospital occu', 'Real Hospital occu','ICU occu', 'Real ICU occu','Daily Death', 'Real Daily Death'}, 'Location', 'southwest', 'NumColumns', 2)
title("Epidemic evolution estimation in Italy")

%ax = gca;
%ax.XTick = xData;
%datetick('x','mmm','keepticks')





%% Different R0
figure(2)
subplot(2, 2, 1)
plot(t, R1+T1+D1)
hold on
plot(t, R2+T2+D2)
plot(t, R3+T3+D3)
hold off
legend("R0 = 1.1", "R0 = 1.27", "R0 = 0.9")
title("Active cases")

subplot(2, 2, 2)
plot(t, R1+T1)
hold on
plot(t, R2+T2)
plot(t, R3+T3)
hold off
legend("R0 = 1.1", "R0 = 1.27", "R0 = 0.9")
title("Hospital Occupancy")

subplot(2, 2, 3)
plot(t, T1)
hold on
plot(t, T2)
plot(t, T3)
hold off
legend("R0 = 1.1", "R0 = 1.27", "R0 = 0.9")
title("ICU Occupancy")

subplot(2, 2, 4)
plot(t, dE1dt)
hold on
plot(t, dE2dt)
plot(t, dE3dt)
hold off
legend("R0 = 1.1", "R0 = 1.27", "R0 = 0.9")
title("Daily Deaths")

%% OC vs CO
figure(3)

subplot(2, 2, 1)
plot(t, R4+T4+D4)
hold on
plot(t, R5+T5+D5)
hold off
legend("Open-Close Medium", "Close-Open Medium")
title("Active cases")

subplot(2, 2, 2)
plot(t, R4+T4)
hold on
plot(t, R5+T5)
hold off
legend("Open-Close Medium", "Close-Open Medium")
title("Hospital Occupancy")

subplot(2, 2, 3)
plot(t, T4)
hold on
plot(t, T5)
hold off
legend("Open-Close Medium", "Close-Open Medium")
title("ICU Occupancy")

subplot(2, 2, 4)
plot(t, dE4dt)
hold on
plot(t, dE5dt)
hold off
legend("Open-Close Medium", "Close-Open Medium")
title("Daily Deaths")


%% Vaccination

figure(4)

subplot(3, 2, 1)
plot(VACC(:, 1))
legend("Slow", 'Location', 'northwest')
title("Daily vaccination rate(% population)")

subplot(3, 2, 2)
plot(cumsum(VACC(:, 1)))
legend("Slow", 'Location', 'northwest')
title("Cumulative vaccinated(% population)")

subplot(3, 2, 3)
plot(VACC(:, 2))
legend("Medium", 'Location', 'northwest')
title("Daily vaccination rate(% population)")

subplot(3, 2, 4)
plot(cumsum(VACC(:, 2)))
legend("Medium", 'Location', 'northwest')
title("Cumulative vaccinated(% population)")

subplot(3, 2, 5)
plot(VACC(:, 3))
legend("Fast", 'Location', 'northwest')
title("Daily vaccination rate(% population)")

subplot(3, 2, 6)
plot(cumsum(VACC(:, 3)))
legend("Fast", 'Location', 'northwest')
title("Cumulative vaccinated(% population)")


%%
figure(5)
subplot(1, 2, 1)
plot(cumvacc*100, T1(1:end-1))
hold on
plot(cumvacc*100, T2(1:end-1))
plot(cumvacc*100, T3(1:end-1))
plot(cumvacc*100, T4(1:end-1))
plot(cumvacc*100, T5(1:end-1))
hold off
legend("R0 = 1.1", "R0 = 1.27", "R0 = 0.9", "Open-Close Medium", "Close-Open Medium")
xlabel("Vaccination speed(%)")
title("ICU Occupancy")

subplot(1, 2, 2)
plot(cumvacc*100, R1(1:end-1)+T1(1:end-1))
hold on
plot(cumvacc*100, R2(1:end-1)+T2(1:end-1))
plot(cumvacc*100, R3(1:end-1)+T3(1:end-1))
plot(cumvacc*100, R4(1:end-1)+T4(1:end-1))
plot(cumvacc*100, R5(1:end-1)+T5(1:end-1))
hold off
xlabel("Vaccination speed(%)")
legend("R0 = 1.1", "R0 = 1.27", "R0 = 0.9", "Open-Close Medium", "Close-Open Medium")
title("Hospital Accupancy")













