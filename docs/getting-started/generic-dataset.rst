.. _generic-dataset:

Generic dataset
===============

Additionally to the multiple reanalyses supported, AtmoSwing allows to use a generic dataset as NetCDF files (``GenericNetcdf``). The files can be organized as follows (AtmoSwing will look for possible matches):

* A single file with the name of the desired predictor variable (ex: rh.nc)
* Yearly files with the year in the file name
* All the files in a directory. The files need to be named in order to be sorted chronologically.
  
 