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

* ````surface_fluxes``
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

NCEP_Reanalysis_v1
~~~~~~~~~~~~~~~~~~

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
* 
* 
* 
* 
* 
* 
* 





NCEP_Reanalysis_v2
~~~~~~~~~~~~~~~~~~

NCEP_CFSR
~~~~~~~~~

NCEP_CFSR_subset
~~~~~~~~~~~~~~~~

ECMWF_ERA_interim
~~~~~~~~~~~~~~~~~
  
ECMWF_ERA_20C
~~~~~~~~~~~~~

ECMWF_CERA_20C
~~~~~~~~~~~~~~

NASA_MERRA_2
~~~~~~~~~~~~

NASA_MERRA_2_subset
~~~~~~~~~~~~~~~~~~
 
JMA_JRA_55_subset
~~~~~~~~~~~~~~~~~

JMA_JRA_55C_subset
~~~~~~~~~~~~~~~~~~
  
NOAA_20CR_v2c
~~~~~~~~~~~~~

NOAA_20CR_v2c_ens
~~~~~~~~~~~~~~~~~
  
NOAA_OISST_v2
~~~~~~~~~~~~~

GenericNetcdf
~~~~~~~~~~~~~

  
