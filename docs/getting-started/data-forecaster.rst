.. _data-forecaster:

Forecaster specific data
========================

AtmoSwing Forecaster can read the following NWP outputs (with the corresponding ID to use):

* NWS GFS forecasts (automatically downloaded from `NOMADS <https://nomads.ncep.noaa.gov/>`_): ``NWS_GFS``
* NWS GFS forecasts, but without download: ``NWS_GFS_Local``
* ECMWF IFS forecasts (no automatic download): ``ECMWF_IFS``
* Météo-France ARPEGE forecasts (no automatic download): ``MF_ARPEGE``


Specify the domain to download
------------------------------

.. warning::
    When choosing GFS, the predictors are downloaded for the European domain by default: longitude from -32° to 42° and latitude from 20° to 72°. The domain can be changed in the AtmoSwingForecaster.ini file.

The default domain and levels to be downloaded are specified in the URLs in AtmoSwingForecaster.ini (under your profile directory; typically C:\\Users\\<username>\\AppData\\Roaming\\AtmoSwing for Windows or .AtmoSwing for Linux/OSX). The domain is adjusted by changing the values of ``leftlon=-32&rightlon=42&toplat=72&bottomlat=20``, and the levels with ``lev_XXX_mb=on``.

.. code-block:: none

   [PredictorsUrl]
   [PredictorsUrl/GFS]
   hgt=https://nomads.ncep.noaa.gov/cgi-bin/filter_gfs_0p50.pl?file=gfs.t[CURRENTDATE-hh]z.pgrb2full.0p50.f[LEADTIME-hhh]&lev_300_mb=on&lev_400_mb=on&lev_500_mb=on&lev_600_mb=on&lev_700_mb=on&lev_850_mb=on&lev_925_mb=on&lev_1000_mb=on&var_HGT=on&subregion=&leftlon=-32&rightlon=42&toplat=72&bottomlat=20&dir=%2Fgfs.[CURRENTDATE-YYYYMMDD]/[CURRENTDATE-hh]
   temp=https://nomads.ncep.noaa.gov/cgi-bin/filter_gfs_0p50.pl?file=gfs.t[CURRENTDATE-hh]z.pgrb2full.0p50.f[LEADTIME-hhh]&lev_300_mb=on&lev_400_mb=on&lev_500_mb=on&lev_600_mb=on&lev_700_mb=on&lev_850_mb=on&lev_925_mb=on&lev_1000_mb=on&var_TMP=on&subregion=&leftlon=-32&rightlon=42&toplat=72&bottomlat=20&dir=%2Fgfs.[CURRENTDATE-YYYYMMDD]/[CURRENTDATE-hh]
   vvel=https://nomads.ncep.noaa.gov/cgi-bin/filter_gfs_0p50.pl?file=gfs.t[CURRENTDATE-hh]z.pgrb2full.0p50.f[LEADTIME-hhh]&lev_300_mb=on&lev_400_mb=on&lev_500_mb=on&lev_600_mb=on&lev_700_mb=on&lev_850_mb=on&lev_925_mb=on&lev_1000_mb=on&var_VVEL=on&subregion=&leftlon=-32&rightlon=42&toplat=72&bottomlat=20&dir=%2Fgfs.[CURRENTDATE-YYYYMMDD]/[CURRENTDATE-hh]
   rh=https://nomads.ncep.noaa.gov/cgi-bin/filter_gfs_0p50.pl?file=gfs.t[CURRENTDATE-hh]z.pgrb2full.0p50.f[LEADTIME-hhh]&lev_300_mb=on&lev_400_mb=on&lev_500_mb=on&lev_600_mb=on&lev_700_mb=on&lev_850_mb=on&lev_925_mb=on&lev_1000_mb=on&var_RH=on&subregion=&leftlon=-32&rightlon=42&toplat=72&bottomlat=20&dir=%2Fgfs.[CURRENTDATE-YYYYMMDD]/[CURRENTDATE-hh]
   uwnd=https://nomads.ncep.noaa.gov/cgi-bin/filter_gfs_0p50.pl?file=gfs.t[CURRENTDATE-hh]z.pgrb2full.0p50.f[LEADTIME-hhh]&lev_300_mb=on&lev_400_mb=on&lev_500_mb=on&lev_600_mb=on&lev_700_mb=on&lev_850_mb=on&lev_925_mb=on&lev_1000_mb=on&var_UGRD=on&subregion=&leftlon=-32&rightlon=42&toplat=72&bottomlat=20&dir=%2Fgfs.[CURRENTDATE-YYYYMMDD]/[CURRENTDATE-hh]
   vwnd=https://nomads.ncep.noaa.gov/cgi-bin/filter_gfs_0p50.pl?file=gfs.t[CURRENTDATE-hh]z.pgrb2full.0p50.f[LEADTIME-hhh]&lev_300_mb=on&lev_400_mb=on&lev_500_mb=on&lev_600_mb=on&lev_700_mb=on&lev_850_mb=on&lev_925_mb=on&lev_1000_mb=on&var_VGRD=on&subregion=&leftlon=-32&rightlon=42&toplat=72&bottomlat=20&dir=%2Fgfs.[CURRENTDATE-YYYYMMDD]/[CURRENTDATE-hh]
   pwat=https://nomads.ncep.noaa.gov/cgi-bin/filter_gfs_0p50.pl?file=gfs.t[CURRENTDATE-hh]z.pgrb2full.0p50.f[LEADTIME-hhh]&lev_entire_atmosphere_%5C%28considered_as_a_single_layer%5C%29=on&var_PWAT=on&subregion=&leftlon=-32&rightlon=42&toplat=72&bottomlat=20&dir=%2Fgfs.[CURRENTDATE-YYYYMMDD]/[CURRENTDATE-hh]

