.. _reanalyses:

Reanalyses
==========

A description of the different reanalyses and the assessment of the impact of the dataset selection are presented in :cite:t:`Horton2018b`. AtmoSwing can read the following reanalyses (with the corresponding ID to use):

* NCEP/NCAR Reanalysis 1: ``NCEP_R1``
   * Use the original file names (yearly files)
* NCEP/DOE Reanalysis 1: ``NCEP_R2``
   * Use the original file names (yearly files)
* NCEP CFSR original Grib files: ``NCEP_CFSR``
   * Use the original file names and directory structures
* NCEP CFSR `subset from NCAR/UCAR <http://rda.ucar.edu/datasets/ds093.0/index.html#!cgi-bin/datasets/getSubset?dsnum=093.0&action=customize&_da=y>`_ as netcdf files: ``NCEP_CFSR_subset``
   * Use the original file names (yearly files)
* ECMWF ERA5: ``ECMWF_ERA5``
   * Use the original variable name in the file name (ex: z for geopotential)
   * Can be structured as a single file (ex: z.nc)
   * Can be structured as yearly files (ex: z.1998.nc)
   * Can be structured differently, but must be isolated in a directory.
* ECMWF ERA-interim: ``ECMWF_ERA_interim``
   * Use the original variable name in the file name (ex: z for geopotential)
   * Can be structured as a single file (ex: z.nc)
   * Can be structured as yearly files (ex: z.1998.nc)
   * Can be structured differently, but must be isolated in a directory.
* ECMWF ERA 20th Century: ``ECMWF_ERA_20C``
   * Must be 1 file per variable with the original variable name in the file name (ex: z.nc)
* ECMWF Coupled ERA 20th Century: ``ECMWF_CERA_20C``
   * Must be yearly files with the original variable name in the file name (ex: z.1998.nc)
* NASA MERRA-2 (Modern-Era Retrospective analysis for Research and Applications, Version 2): ``NASA_MERRA_2``
   * Use the original file names and directory structures
* NASA MERRA-2 `subset from MDISC <http://disc.sci.gsfc.nasa.gov/daac-bin/FTPSubset2.pl>`_: ``NASA_MERRA_2_subset``
   * Use the original file names
* JMA Japanese 55-year Reanalysis `subset from NCAR/UCAR <http://rda.ucar.edu/datasets/ds628.0/index.html#!cgi-bin/datasets/getSubset?dsnum=628.0&listAction=customize&_da=y>`_: ``JMA_JRA_55_subset``
   * Use the original file names
* JMA Japanese 55-year Reanalysis Conventional `subset from NCAR/UCAR <http://rda.ucar.edu/datasets/ds628.2/index.html#!cgi-bin/datasets/getSubset?dsnum=628.2&listAction=customize&_da=y>`_: ``JMA_JRA_55C_subset``
   * Use the original file names
* NOAA Twentieth Century Reanalysis v2c: ``NOAA_20CR_v2c``
   * Use the original file names (yearly files -- ex: z.1956.nc)
* NOAA Twentieth Century Reanalysis v2c ensemble: ``NOAA_20CR_v2c_ens``
   * Use the original file names (yearly files -- ex: z500_1956.nc)
* NOAA Optimum Interpolation Sea Surface Temperature, version 2: ``NOAA_OISST_v2``
   * Use the original file names (single files -- ex: sst_1deg.nc)
* :ref:`A generic NetCDF dataset <generic-dataset>`: ``Generic[__]``
   * Use the original variable name in the file name (ex: z for geopotential)
   * Can be structured as a single file (ex: z.nc)
   * Can be structured as yearly files (ex: z.1998.nc)
   * Can be structured differently, but must be isolated in a directory.
   * :ref:`See details here <generic-dataset>`
