# before running, don't forget to
# delete the lines with AMI
# run :%s///g

import matplotlib
from matplotlib import rc
rc("font", family="serif")
rc("text", usetex=True)
import matplotlib.pyplot as plt
from matplotlib.ticker import MaxNLocator
from mpl_toolkits.axes_grid1.inset_locator import mark_inset
from mpl_toolkits.axes_grid1.inset_locator import inset_axes
import numpy as np
from astropy.table import Table
from astropy.cosmology import Planck15
import sys
sys.path.append("/Users/annaho/Dropbox/Projects/Research/AT2018cow/code")
from get_radio import get_data_all, get_spectrum
from synchrotron_fit import self_abs, fit_self_abs


def run_day(ax, day, formatting=True):
    """ Run this for one day """
    nu,flux = get_spectrum(day)
    ax.scatter(
            nu, flux, marker='o',
            label="$\Delta t = %s$" %day, c='k')

    if formatting:
        ax.set_xscale('log')
        ax.set_yscale('log')
        ax.set_ylabel("Flux [mJy]", fontsize=16)
        ax.text(
                0.4, 0.45, "$F_\\nu \propto \\nu^2$", 
                transform=ax.transAxes, horizontalalignment='right', fontsize=14)
        ax.text(
                0.9, 0.1, "Day %s" %day, 
                transform=ax.transAxes, horizontalalignment='right', fontsize=14)

    b = fit_self_abs(nu[nu<100],flux[nu<100])
    #         flux_err[choose][order][det][0:2])
    xfit = np.linspace(5, 200)
    yfit = 10**(2*np.log10(xfit)+b)
    ax.plot(xfit, yfit, ls=':', c='k')


    # fit and plot a nu^something line
    # m,b = np.polyfit(
    #         np.log10(freq[choose][order][det][2:]),
    #         np.log10(flux[choose][order][det][2:]),
    #         deg = 1,
    #         w=1/flux_err[choose][order][det][2:]**2)
    # print(m)
    xfit = np.linspace(80, 500)
    # yfit = 10**(m*np.log10(xfit)+b)
    # ax.plot(xfit, yfit, ls=':', c='k')
    # ax.text(
    #         0.8, 0.85, "$F_\\nu \propto \\nu^{-1.8}$", 
    #         transform=ax.transAxes, horizontalalignment='left', fontsize=14)

    # the lines join at (144, 92)
    #ax.text(
    #        0, 0.9, "$(\\nu_p, F_p) = (144\,\mathrm{GHz}, 92\,\mathrm{mJy}$)", 
    #        transform=ax.transAxes, horizontalalignment='left', fontsize=14)

    ax.tick_params(axis='both', labelsize=14)
    ax.tick_params(axis='both', labelsize=14)


if __name__=="__main__":
    fig, axarr = plt.subplots(
            3, 1, figsize=(8,8), sharex=True, sharey=True)

    # top panel: spectrum on Day 10
    ax = axarr[0]
    run_day(ax, 10)

    # middle panel: spectrum on Day 14
    ax = axarr[1]
    run_day(ax, 14)

    # bottom panel: spectrum on Day 22
    ax = axarr[2]
    run_day(ax, 22)
    ax.set_xlabel("Frequency [GHz]", fontsize=16)

    # Zoomed-in window
    axins = inset_axes(
            ax, 2, 1, loc=1,
            bbox_to_anchor=(0.4,0.8),
            bbox_transform=ax.transAxes)
    run_day(axins, 22, formatting=False)
    axins.set_xlim(88, 106)
    axins.set_ylim(90, 95)
    axins.tick_params(axis='both', labelsize=12)
    mark_inset(ax, axins, loc1=2, loc2=4, fc="none", ec="0.5")
    axins.xaxis.set_major_locator(MaxNLocator(nbins=2, prune='lower'))
    axins.yaxis.set_major_locator(MaxNLocator(nbins=2, prune='lower'))

    # # Choose the Band 3 measurements
    # freq_fit = freq[choose][order]
    # flux_fit = flux[choose][order]
    # choosefit = np.logical_and(freq_fit < 107.5, freq_fit > 87.5)
    # axins.scatter(freq_fit[choosefit], flux_fit[choosefit], c='k')

    # # Fit a quadratic function to the data to find the peak
    # out = np.polyfit(freq_fit[choosefit], flux_fit[choosefit], deg=2)
    # xlab = np.linspace(87.5, 107.5)
    # ylab = out[0]*xlab**2 + out[1]*xlab + out[2]
    # axins.plot(xlab, ylab, c='k', ls='--')



    plt.show()
    # plt.savefig("spec.png")
