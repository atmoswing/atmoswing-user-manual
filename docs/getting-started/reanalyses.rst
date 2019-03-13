.. _reanalyses:

Reanalyses
==========

Supported reanalyses
--------------------

AtmoSwing can read the following reanalyses (with the corresponding id to use):

NCEP_Reanalysis_v1
  NCEP/NCAR Reanalysis 1

NCEP_Reanalysis_v2
  NCEP/DOE Reanalysis 1

NCEP_CFSR
  NCEP CFSR original Grib files

NCEP_CFSR_subset
  NCEP CFSR `subset from NCAR/UCAR <http://rda.ucar.edu/datasets/ds093.0/index.html#!cgi-bin/datasets/getSubset?dsnum=093.0&action=customize&_da=y>`_ as netcdf files

ECMWF_ERA_interim
  ECMWF ERA-interim
  
ECMWF_ERA_20C
  ECMWF ERA 20th Century

ECMWF_CERA_20C
  ECMWF Coupled ERA 20th Century

NASA_MERRA_2
  NASA MERRA-2 (Modern-Era Retrospective analysis for Research and Applications, Version 2)

NASA_MERRA_2_subset
  NASA MERRA-2 `subset from MDISC <http://disc.sci.gsfc.nasa.gov/daac-bin/FTPSubset2.pl>`_
 
JMA_JRA_55_subset
  JMA Japanese 55-year Reanalysis `subset from NCAR/UCAR <http://rda.ucar.edu/datasets/ds628.0/index.html#!cgi-bin/datasets/getSubset?dsnum=628.0&listAction=customize&_da=y>`_

JMA_JRA_55C_subset
  JMA Japanese 55-year Reanalysis Conventional `subset from NCAR/UCAR <http://rda.ucar.edu/datasets/ds628.2/index.html#!cgi-bin/datasets/getSubset?dsnum=628.2&listAction=customize&_da=y>`_
  
NOAA_20CR_v2c
  NOAA Twentieth Century Reanalysis v2c

NOAA_20CR_v2c_ens
  NOAA Twentieth Century Reanalysis v2c ensemble
  
NOAA_OISST_v2
  NOAA Optimum Interpolation Sea Surface Temperature, version 2

GenericNetcdf
  A generic NetCDF dataset

Generic dataset
---------------

Additionally to the multiple reanalyses supported, AtmoSwing allows to use a generic dataset as NetCDF files. The files can be organized as follows (AtmoSwing will look for possible matches):

* A single file with the name of the desired predictor variable (ex: rh.nc)
* Yearly files with the year in the file name
* All the files in a directory. The files need to be named in order to be sorted chronologically.
