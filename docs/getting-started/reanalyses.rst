.. _reanalyses:

Reanalyses
==========

A description of the different reanalyses and the assessment of the impact of the dataset selection are presented in [Horton2018]_. AtmoSwing can read the following reanalyses (with the corresponding id to use):

* NCEP/NCAR Reanalysis 1: ``NCEP_Reanalysis_v1``
* NCEP/DOE Reanalysis 1: ``NCEP_Reanalysis_v2``
* NCEP CFSR original Grib files: ``NCEP_CFSR``
* NCEP CFSR `subset from NCAR/UCAR <http://rda.ucar.edu/datasets/ds093.0/index.html#!cgi-bin/datasets/getSubset?dsnum=093.0&action=customize&_da=y>`_ as netcdf files: ``NCEP_CFSR_subset``
* ECMWF ERA-interim: ``ECMWF_ERA_interim``
* ECMWF ERA 20th Century: ``ECMWF_ERA_20C``
* ECMWF Coupled ERA 20th Century: ``ECMWF_CERA_20C``
* NASA MERRA-2 (Modern-Era Retrospective analysis for Research and Applications, Version 2): ``NASA_MERRA_2``
* NASA MERRA-2 `subset from MDISC <http://disc.sci.gsfc.nasa.gov/daac-bin/FTPSubset2.pl>`_: ``NASA_MERRA_2_subset``
* JMA Japanese 55-year Reanalysis `subset from NCAR/UCAR <http://rda.ucar.edu/datasets/ds628.0/index.html#!cgi-bin/datasets/getSubset?dsnum=628.0&listAction=customize&_da=y>`_: ``JMA_JRA_55_subset``
* JMA Japanese 55-year Reanalysis Conventional `subset from NCAR/UCAR <http://rda.ucar.edu/datasets/ds628.2/index.html#!cgi-bin/datasets/getSubset?dsnum=628.2&listAction=customize&_da=y>`_: ``JMA_JRA_55C_subset``
* NOAA Twentieth Century Reanalysis v2c: ``NOAA_20CR_v2c``
* NOAA Twentieth Century Reanalysis v2c ensemble: ``NOAA_20CR_v2c_ens``
* NOAA Optimum Interpolation Sea Surface Temperature, version 2: ``NOAA_OISST_v2``
* :ref:`A generic NetCDF dataset <generic-dataset>`: ``GenericNetcdf``


.. [Horton2018] Horton, P., & Brönnimann, S. (2018). Impact of global atmospheric reanalyses on statistical precipitation downscaling. Climate Dynamics. http://doi.org/10.1007/s00382-018-4442-6
