.. _variables:

Variables
=========

The different existing datasets do not name the meteorological variables the same way. AtmoSwing can interact with many datasets and has several of their variables defined. These datasets often provides different products, for example for different types of level (isobaric, isentropic, surface, etc). As some variable can be defined for different levels (e.g. temperature), the product/level must be specified. Thus, the selection of a variable in the parameters file is defined as ``level/variable``, such as ``pressure/z`` for the geopotential on pressure levels, or ``isentropic/t`` for the temperature on isentropic levels. As different levels types and variables are present for different datasets, they can be named differently in AtmoSwing. For example ``pressure/z``, ``pl/h``, and ``isobaric/hgt`` are identical.

The following sections define first the different levels, then some common variables to most datasets, and finally list the available variables for the different datasets.

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


Available variables from datasets
---------------------------------

The following variables are defined in AtmoSwing for the different reanalyses:

NCEP/NCAR Reanalysis 1
~~~~~~~~~~~~~~~~~~~~~~

On pressure levels:

* Air Temperature
* Geopotential height
* Relative Humidity
* Specific Humidity
* Vertical Velocity
* U-Wind
* V-Wind

On the surface:

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

For the 'surface fluxes':

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

On pressure levels:

* Air Temperature
* Geopotential height
* Relative Humidity
* Vertical Velocity
* U-Wind
* V-Wind

On the surface:

* Precipitable water
* Pressure
* Sea level pressure

For the 'surface fluxes':

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

NCEP CFSR subset
~~~~~~~~~~~~~~~~

ECMWF ERA-interim
~~~~~~~~~~~~~~~~~
  
ECMWF ERA 20th Century
~~~~~~~~~~~~~~~~~~~~~~

ECMWF Coupled ERA 20th Century
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

NASA MERRA-2
~~~~~~~~~~~~

NASA MERRA-2 subset
~~~~~~~~~~~~~~~~~~
 
JMA JRA-55 subset
~~~~~~~~~~~~~~~~~

JMA JRA-55C subset
~~~~~~~~~~~~~~~~~~
  
NOAA 20CR v2c
~~~~~~~~~~~~~

NOAA 20CR v2c ensemble
~~~~~~~~~~~~~~~~~~~~~~
  
NOAA OISST v2
~~~~~~~~~~~~~

Generic NetCDF
~~~~~~~~~~~~~~

  
