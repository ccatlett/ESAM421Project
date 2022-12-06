# ESAM421Project
Code for TYC Model (ESAM 421, Fall 2022)

Included is code used to simulate, plot, and analyze both Formulation (1) and Formulation (2) of the TYC model explored in the Final Project. Note that the codebase is modular; parameters and options in the files may not reflect exactly the figures displayed in the final paper.

Contents:
- TYC.m: dimensional TYC model definition with constant influx term $\mu$ (Forumlation (1))
- TYC_ND.m: dimensionless TYC model definition with constant influx term $\hat{\mu}$ (Forumlation (1))
- TYCPer.m: dimensional TYC model definition with periodic influx term $\mu(t) = A\sin^2(\omega t)$ (Forumlation (2))
- TYCPer_ND.m: dimensionless TYC model definition with periodic influx term $\mu(\hat{t}) = \hat{A}\sin^2(\hat{\omega} \hat{t})$ (Forumlation (2))


