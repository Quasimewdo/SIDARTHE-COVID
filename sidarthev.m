function dydt = sidarthev(t, y, alpha, beta, gamma, delta, epsilon, theta, zeta, eta, mu, nu, tau1, tau2, lambda, kappa, csi, rho, sigma, vac, VACC)
S = y(1);
I = y(2);
D = y(3);
A = y(4);
R = y(5);
T = y(6);
H = y(7);
E = y(8);
V = y(9);

dS_dt = -S * (alpha*I + beta*D + gamma*A + delta*R) - vac*S;
dI_dt = S * (alpha*I + beta*D + gamma*A + delta*R) - (epsilon+zeta+lambda)*I;
dD_dt = epsilon*I - (eta+rho)*D;
dA_dt = zeta*I - (theta+mu+kappa)*A;
dR_dt = eta*D + theta*A - (nu+csi+tau1)*R;
dT_dt = mu*A + nu*R - (sigma+tau2)*T;
dH_dt = lambda*I + rho*D + kappa*A + csi*R + sigma*T;
dE_dt = tau1*R + tau2*T;
dV_dt = max(vac*S, VACC);%vac*S; % max(vacc, S) %vacc: depend on the plot in fig4

dydt = [dS_dt; dI_dt; dD_dt; dA_dt; dR_dt; dT_dt; dH_dt; dE_dt; dV_dt];




end