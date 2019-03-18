.. _variables:

Predictor variables
===================

The different existing datasets do not name the meteorological variables the same way. AtmoSwing can interact with many datasets and has several of their variables defined. These datasets often provides different products, for example for different types of level (isobaric, isentropic, surface, etc). As some variable can be defined for different levels (e.g. temperature), the product/level must be specified. Thus, the selection of a variable in the parameters file is defined as ``level/variable``, such as ``pressure/z`` for the geopotential on pressure levels, or ``isentropic/t`` for the temperature on isentropic levels. As different levels types and variables are present for different datasets, they can be named differently in AtmoSwing. For example ``pressure/z``, ``pl/h``, and ``isobaric/hgt`` are identical. The name of the level (or product) has to be the same as the name of the corresponding subfolder. For example, someone using NCEP/NCAR Reanalysis 1 and having a subfolder 'pressure' should then use ``pressure/z`` for the geopotential height.

The following sections define first the different levels, then some common variables to most datasets, and finally list the available variables for the different datasets.

.. contents:: Content of this section


Differentiating subsets/levels
------------------------------

The level can usually be defined using different terms. The provided terms are interchangeables.

**Pressure level**:

* ``pressure_level``
* ``pressure_levels``
* ``pressure``
* ``press``
* ``isobaric``
* ``pl``
* ``pgbh``
* ``pgbhnl``
* ``pgb``

**Isentropic level**:

* ``isentropic_level``
* ``isentropic``
* ``potential_temperature``
* ``pt``
* ``ipvh``
* ``ipv``

**Surface**:

* ``surface``
* ``surf``
* ``ground``
* ``sfc``
* ``sf``

**'Flux' level**:

* ``surface_fluxes``
* ``fluxes``
* ``flux``
* ``flxf06``
* ``flx``

**Column level**:

* ``total_column``
* ``column``
* ``tc``
* ``entire_atmosphere``
* ``ea``

**Potential vorticity**:

* ``potential_vorticity``
* ``pv``
* ``pv_surface``
* ``epv``


Common variables
----------------

Some variables are defined with different names (aliases) across the datasets:

**Geopotential**:

* ``z``
* ``h``
* ``zg``

When loading geopotential data, AtmoSwing automatically converts it to geopotential height.

**Geopotential height**:

* ``z``
* ``h``
* ``zg``
* ``hgt``

**Air temperature**:

* ``t``
* ``temp``
* ``tmp``
* ``ta``
* ``air``

**Relative humidity**:

* ``rh``
* ``rhum``
* ``hur``
* ``r``

**Specific humidity**:

* ``sh``
* ``shum``
* ``hus``
* ``q``
* ``qv``

**Vertical velocity**:

* ``w``
* ``vvel``
* ``wap``
* ``omega``

**Precipitable water**:

* ``pwat``
* ``p_wat``
* ``tcw``
* ``pr_wtr``
* ``prwtr``

**Pressure**:

* ``pressure``
* ``press``
* ``pres``

**Sea level pressure**:

* ``slp``
* ``mslp``
* ``psl``
* ``prmsl``
* ``msl``

**U wind component**:

* ``u``
* ``ua``
* ``ugrd``
* ``u_grd``
* ``uwnd``

**V wind component**:

* ``v``
* ``va``
* ``vgrd``
* ``v_grd``
* ``vwnd``

**PV**:

* ``pv``
* ``pvort``
* ``epv``

**Total precipitation**:

* ``tp``
* ``prectot``


Variables from datasets
-----------------------

The following variables are defined in AtmoSwing for the different reanalyses. When no data id is provided, one can use one of the variants define above.

NCEP/NCAR Reanalysis 1
~~~~~~~~~~~~~~~~~~~~~~

**For pressure levels**:

* Air Temperature
* Geopotential height
* Relative Humidity
* Specific Humidity
* Vertical Velocity
* U-Wind
* V-Wind

**For the surface**:

* Air Temperature
* Surface lifted index (``lftx``)
* Best (4-layer) lifted index (``lftx4``)
* Vertical velocity
* Potential temperature (``pottmp``)
* Precipitable water
* Pressure
* Relative humidity
* Sea level pressure
* U-wind
* V-wind

**For the 'surface fluxes'**:

* Air Temperature 2m
* Potential evaporation rate (``pevpr``)
* Specific humidity at 2m (``shum``)
* Soil moisture (0-10cm) (``soilw0-10``)
* Soil moisture (10-200cm) (``soilw10-200``)
* Skin Temperature (``sktmp``)
* Temperature of 0-10cm layer (``tmp0-10``)
* Temperature of 10-200cm layer (``tmp10-200``)
* Temperature at 300cm (``tmp300``)
* U-wind at 10 m
* V-wind at 10 m
* Water equiv. of snow dept (``weasd``)
* Maximum temperature at 2m (``tmax2m``)
* Minimum temperature at 2m (``tmin2m``)
* Cloud forcing net longwave flux (``cfnlf``)
* Cloud forcing net solar flux (``cfnsf``)
* Convective precipitation rate (``cprat``)
* Clear sky downward longwave flux (``csdlf``)
* Clear sky downward solar flux (``csdsf``)
* Clear sky upward solar flux at surface (``csusf``)
* Downward longwave radiation flux (``dlwrf``)
* Downward solar radiation flux (``dswrf``)
* Ground heat flux (``gflux``)
* Latent heat net flux (``lhtfl``)
* Near IR beam downward solar flux (``nbdsf``)
* Near IR diffuse downward solar flux (``nddsf``)
* Net longwave radiation (``nlwrs``)
* Net shortwave radiation (``nswrs``)
* Precipitation rate
* Sensible heat net flux (``shtfl``)
* Momentum flux (zonal) (``uflx``)
* Zonal gravity wave stress (``ugwd``)
* Upward Longwave Radiation Flux (``ulwrf``)
* Upward Solar Radiation Flux (``uswrf``)
* Visible Beam Downward Solar Flux (``vbdsf``)
* Visible Diffuse Downward Solar Flux (``vddsf``)
* Momentum Flux, v-component (``vflx``)
* Meridional Gravity Wave Stress (``vgwd``)


NCEP/DOE Reanalysis 2
~~~~~~~~~~~~~~~~~~~~~

**For pressure levels**:

* Air Temperature
* Geopotential height
* Relative Humidity
* Vertical Velocity
* U-Wind
* V-Wind

**For the surface**:

* Precipitable water
* Pressure
* Sea level pressure

**For the 'surface fluxes'**:

* Air Temperature 2m
* Specific humidity at 2m (``shum``)
* Maximum temperature at 2m (``tmax2m``)
* Minimum temperature at 2m (``tmin2m``)
* Skin Temperature (``sktmp``)
* Soil moisture (0-10cm) (``soilw0-10``)
* Soil moisture (10-200cm) (``soilw10-200``)
* Temperature of 0-10cm layer (``tmp0-10``)
* Temperature of 10-200cm layer (``tmp10-200``)
* U-wind at 10 m
* V-wind at 10 m
* Water equiv. of snow dept (``weasd``)
* Convective precipitation rate (``cprat``)
* Downward longwave radiation flux (``dlwrf``)
* Downward solar radiation flux (``dswrf``)
* Ground heat flux (``gflux``)
* Latent heat net flux (``lhtfl``)
* Potential evaporation rate (``pevpr``)
* Precipitation rate
* Sensible heat net flux (``shtfl``)
* Total cloud cover (``tcdc``)
* Momentum flux (zonal) (``uflx``)
* Zonal gravity wave stress (``ugwd``)
* Upward Longwave Radiation Flux (``ulwrf``)
* Upward Solar Radiation Flux (``uswrf``)
* Momentum Flux (meridional) (``vflx``)
* Meridional Gravity Wave Stress (``vgwd``)


NCEP CFSR
~~~~~~~~~

**For pressure levels** (``pgbh``):

* Geopotential height
* Precipitable water
* Mean sea level pressure
* Relative humidity
* Temperature


NCEP CFSR subset
~~~~~~~~~~~~~~~~

**For pressure levels**:

* Geopotential height
* Geopotential height anomaly (``gpa``)
* Relative humidity
* Specific humidity
* Temperature
* Vertical Velocity
* Eastward wind
* Northward wind
* Atmosphere horizontal velocity potential (``vpot``)
* 5-wave geopotential height (``5wavh``)
* 5-wave geopotential height anomaly (``5wava``)
* Atmosphere absolute vorticity (``absv``)
* Cloud water mixing ratio (``clwmr``)
* Atmosphere horizontal streamfunction (``strm``)

**For the total column**:

* Relative humidity
* Cloud water (``cwat``)
* Atmosphere water vapor content (``pwat``)


ECMWF ERA-interim
~~~~~~~~~~~~~~~~~

**For pressure levels**:

* Divergence (``d``)
* Potential vorticity
* Specific humidity
* Relative humidity
* Temperature
* U component of wind
* V component of wind
* Vorticity (relative) (``vo``)
* Vertical velocity
* Geopotential

**For isentropic levels**:

* Divergence (``d``)
* Montgomery potential (``mont``)
* Pressure
* Potential vorticity
* Specific humidity
* U component of wind
* V component of wind
* Vorticity (relative) (``vo``)

**For surface**:

* 2 metre dewpoint temperature (``d2m``)
* Sea level pressure (``msl``)
* Snow depth (``sd``)
* Sea surface temperature (``sst``)
* 2 metre temperature (``t2m``)
* Total column water
* Total column water vapour (``tcwv``)
* 10 metre U wind component (``u10``)
* 10 metre V wind component (``v10``)
* Total precipitation
* Convective available potential energy (``cape``)
* Instantaneous moisture flux (``ie``)
* Surface net solar radiation (``ssr``)
* Surface solar radiation downwards (``ssrd``)
* Surface net thermal radiation (``str``)
* Surface thermal radiation downwards (``strd``)

**For PV levels**:

* Pressure
* Potential temperature (``pt``)
* U component of wind
* V component of wind
* Geopotential


ECMWF ERA 20th Century
~~~~~~~~~~~~~~~~~~~~~~

**For pressure levels**:

* Geopotential
* Temperature
* Relative humidity
* Vertical velocity

**For surface**:

* Total column water
* Total precipitation
* Sea level pressure


ECMWF Coupled ERA 20th Century
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**For pressure levels**:

* Geopotential
* Temperature
* Relative humidity
* Vertical velocity

**For surface**:

* Total column water
* Total precipitation
* Sea level pressure


NASA MERRA-2
~~~~~~~~~~~~

**For product 'inst6_3d_ana_Np'**:

* Geopotential height
* Air temperature
* Sea-level pressure


NASA MERRA-2 subset
~~~~~~~~~~~~~~~~~~
 
**For product 'inst6_3d_ana_Np'**:

* Geopotential height
* Specific humidity
* Air temperature
* Sea-level pressure
* Eastward wind component
* Northward wind component
* Surface pressure (``ps``)

**For product 'inst3_3d_asm_Np'**:

* Ertel's potential vorticity
* Vertical pressure velocity
* Relative humidity after moist
* Sea level pressure
* Air temperature

**For product 'inst1_2d_int_Nx'**:

* Total precipitable ice water (``tqi``)
* Total precipitable liquid water (``tql``)
* Total precipitable water vapor (``tqv``)

**For product 'inst1_2d_asm_Nx'**:

* Total precipitable ice water (``tqi``)
* Total precipitable liquid water (``tql``)
* Total precipitable water vapor (``tqv``)
* 10-meter air temperature (``t10m``)

**For product 'tavg1_2d_flx_Nx'**:

* Total surface precipitation flux

**For product 'tavg1_2d_lnd_Nx'**:

* Total precipitation land; bias corrected


JMA JRA-55 subset
~~~~~~~~~~~~~~~~~

**For pressure levels** (anl_p125):

* Geopotential height
* Relative humidity
* Temperature
* Vertical velocity

**For the surface** (anl_surf125):

* Pressure reduced to MSL

**For the total column** (anl_column125):

* Precipitable water

**For isentropic levels**:

* Potential vorticity
* Geopotential Height

**For the product 'fcst_phy2m125'**:

* Total precipitation 3h (``tprat3h``)
* Total precipitation 6h (``tprat6h``)


JMA JRA-55C subset
~~~~~~~~~~~~~~~~~~

**For pressure levels** (anl_p125):

* Geopotential height
* Relative humidity
* Temperature
* Vertical velocity

**For the surface** (anl_surf125):

* Pressure reduced to MSL

**For the total column** (anl_column125):

* Precipitable water

**For isentropic levels**:

* Potential vorticity
* Geopotential Height

**For the product 'fcst_phy2m125'**:

* Total precipitation 3h (``tprat3h``)
* Total precipitation 6h (``tprat6h``)


NOAA 20CR v2c
~~~~~~~~~~~~~

**For pressure levels**:

* Air Temperature
* Geopotential
* Vertical velocity
* Relative Humidity
* Specific Humidity
* Specific Humidity
* U-Wind
* V-Wind

**For the surface**:

* Precipitable water
* Sea level pressure

**For surface fluxes**:

* Precipitation rate


NOAA 20CR v2c ensemble
~~~~~~~~~~~~~~~~~~~~~~

**For the product 'analysis'**:

* Sea level pressure
* Precipitable water
* Vertical velocity at 500 hPa (``omega500``)
* Relative Humidity at 850 hPa (``rh850``)
* Relative Humidity at the pressure level 0.995 times the surface pressure (``rh9950``)
* Air Temperature at 850 hPa(``t850``)
* Air Temperature at the pressure level 0.995 times the surface pressure (``t9950``)
* Geopotential height at 200 hPa (``z200``)
* Geopotential height at 500 hPa (``z500``)
* Geopotential height at 1000 hPa (``z1000``)

**For the product 'first_guess'**:

* Precipitation rate


NOAA OISST v2
~~~~~~~~~~~~~

There are no product/level definition for this dataset

* Sea Surface Temperature (``sst``)
* Sea Surface Temperature Anomaly (``sst_anom``)


Generic NetCDF
~~~~~~~~~~~~~~

The generic dataset is different from the other datasets. There is no predefined variables. You have to use the same name as the variable name in the NetCDF file. 
  
