""" Measure the various physical quantities on each day """

import matplotlib.pyplot as plt
import numpy as np
from astropy.cosmology import Planck15
import sys
sys.path.append("/Users/annaho/Dropbox/Projects/Research/AT2018cow/code")
from get_radio import get_spectrum
from synchrotron_fit import self_abs, fit_self_abs


# CONSTANTS
c = 3E10
mp = 1.67E-24
c6 = 8.16E-41
c5 = 6.29E-24
c1 = 6.27E18
El = 8.17E-7
alpha = 1
f = 0.5


def get_R_full(Fp, nup):
    """ This is Equation 11 in Chevalier 98 """
    top = 6 * c6**(gamma+5) * Fp**(gamma+6) * d**(2*gamma+12)
    bottom = alpha*f*(gamma-2)*np.pi**(gamma+5)*c5**(gamma+6)*El**(gamma-2)
    Rp = (top/bottom)**(1/(2*gamma+13)) * (nup/(2*c1))**(-1)
    return Rp


def get_R(Fp, nup, d_mpc):
    """ This is Equation 13 in C98
    Fp in Jy
    nup in GHz

    Returns Rp in cm
    """
    Rp = 8.8E15 * alpha**(-1/19) * (f/0.5)**(-1/19) * (Fp)**(9/19) * \
         d_mpc**(18/19) * (nup/5)**(-1)
    return Rp


def get_B(Fp, nup, d_mpc):
    """ This is Equation 14 in C98
    Fp in Jy
    nup in GHz
    
    Returns Bp in Gauss
    """
    Bp = 0.58 * alpha**(-4/19) * (f/0.5)**(-4/19) * (Fp)**(-2/19) * \
         d_mpc**(-4/19) * (nup/5)
    return Bp
    


def multiple_days():
    for dt in np.arange(8,31):
        nu,f = get_spectrum(dt)
        plt.scatter(nu, f, c='k')
        # For points < 40 GHz, fit a nu**2 power law
        choose = nu < 40
        order = np.argsort(nu[choose])
        ba = fit_self_abs(nu[choose][order],f[choose][order])
        ma = 2
        xfit = np.linspace(5, 200)
        yfit = 10**(ma*np.log10(xfit)+ba)
        plt.plot(xfit, yfit, ls=':', c='k')

        # For points > 200 GHz, fit whatever power law
        choose = nu > 200
        m,b = np.polyfit(np.log10(nu[choose]), np.log10(f[choose]), deg=1)
        xfit = np.linspace(50, 1000)
        yfit = 10**(m*np.log10(xfit)+b)
        plt.plot(xfit, yfit, ls=':', c='k')

        # Find the intersection of these two lines
        xin = (ba-b) / (m-ma)
        yin = m*xin+b

        # Calculations
        nu_a = 10**xin
        F_a = 10**yin
        alpha = m
        theta = 120 * 60**(-1/17) * F_a**(8/17) * nu_a**((2+alpha-35)/34)
        R = theta * 10**(-6) * (1/206265) * d
        V = (4/3) * np.pi * R**3
        v = R/(86400*dt)
        beta = v/c
        B = 20.8*(nu_a*F_a / ((R/10**15)**3))**(2/7)
        U = 2 * (B**2)/(8*np.pi) * V

        #8.4E45 * B**2 * (R/10**15)**3
        n = (B**2 / (8 * np.pi * mp * v**2))

        # Plot results
        R_plt = r"%s \times 10^{15}" %np.round(R/10**15,1)
        U_plt = r"%s \times 10^{50}" %np.round(U/10**50,1)
        plt.xscale('log')
        plt.yscale('log')
        plt.xlabel("Frequency [GHz]")
        plt.ylabel("Flux [mJy]")
        plt.text(5,100,
        r"$R=%s$ cm, $\beta=%s$" %(R_plt, np.round(beta,2)))
        plt.text(5,70,
        r"$B=%s$ G, $U=%s$" %(int(B), U_plt))
        plt.text(5, 170, "Day %s" %dt, fontsize=15)
        plt.text(200, 120,
                r"$\nu_a=%s$ GHz" %(int(nu_a)))
        plt.text(200, 90,
                r"$F_a=%s$mJy" %(int(F_a)))
        plt.savefig("day_%s.png" %dt)
        plt.close()


def run(nupeak, fpeak, d, gamma, d_mpc):
    """ nupeak in GHz, fpeak in Jy, dist in cm """
    print("lpeak", fpeak*1E-23*4*np.pi*d**2)
    R = get_R(fpeak, nupeak, d_mpc)
    print("R", R/10**15)
    B = get_B(fpeak, nupeak, d_mpc)
    dt = 22
    V = (4/3) * f * np.pi * R**3
    v = R/(86400*dt)
    beta = v/c
    print("Beta", beta)
    P = 3*B**2/(8*np.pi)
    rho = (4*P/3)/v**2
    print(rho)
    n_p = rho/mp
    n_e = n_p
    print("ne", n_e)
    UB = (B**2)/(8*np.pi) * V
    print(UB)
    print("E", 3*UB)
    tauff = 8.235E-2 * n_e**2 * (R/3.086E18) * (8000)**(-1.35)
    print(tauff)
    Te = 1.2E6
    nuff = (1/(68*(Te/8000)**(-1.35)))**(-1/2.1)
    print(nuff)
    Lff = 1.43E-27 * n_e**2 * Te**(1/2) * (4/3) * np.pi * (6E16)**3
    print(Lff)


def at2018cow():
    nupeak = 100
    fpeak = 94E-3
    d = Planck15.luminosity_distance(z=0.014).cgs.value
    d_mpc = Planck15.luminosity_distance(z=0.014).value
    run(nupeak, fpeak, d, gamma, d_mpc)


def sn2003L():
    """ Soderberg 2005
    "At 30 days, the peak flux density is 3.2 mJy at 22.5 GHz
    The observed optically thin spectral index is -1.1,
    same as for AT2018cow
    distance is 92 Mpc
    """
    d = Planck15.luminosity_distance(z=0.0205).cgs.value
    d_mpc = Planck15.luminosity_distance(z=0.0205).value
    beta = -1.1
    gamma = -2*beta+1
    nupeak = 22.5
    fpeak = 3.2E-3
    run(nupeak, fpeak, d, gamma, d_mpc)


def sn2007bg():
    """ Salas et al. 2013 
    In Phase 1 of the explosion, the peak luminosity reached
    is 4.1E28 erg/s/Hz observed on Day 55.9 at 8.46 GHz
    d = 152 Mpc
    """
    nupeak = 8.46
    fpeak = 1490E-6
    redshift = 0.0335
    d = Planck15.luminosity_distance(z=redshift).cgs.value
    d_mpc = Planck15.luminosity_distance(z=redshift).value
    gamma = 3.2 # they don't give it in the paper though
    run(nupeak, fpeak, d, gamma, d_mpc)



if __name__=="__main__":
    sn2007bg()
