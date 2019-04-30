.. _generic-dataset:

Generic dataset
===============

Additionally to the multiple reanalyses supported, AtmoSwing allows to use a generic dataset as NetCDF files (``GenericNetcdf``). The files can be organized as follows (AtmoSwing will look for possible matches):

* A single file with the name of the desired predictor variable (ex: rh.nc)
* Yearly files with the year in the file name
* All the files in a directory. The files need to be named in order to be sorted chronologically.
  
File structure
--------------

The file needs to have 4 dimensions:

* lat: latitude
* lon: longitude
* level: needs to be defined even if there is no level (set to 0 in this case)
* time: needs to be expressed as Modified Julian Date (``days since 1858-11-17 00:00:00.0 +0:00``)

The generic dataset is different from the other datasets as there is no predefined variables. The name given to the variable must also be used in the xml parameters file.

Generate generic datasets
-------------------------

The `AtmoSwing Python toolbox repository <https://github.com/atmoswing/tools-py>`_ contains scripts to convert some reanalyses to the generic format (for example `scripts/createGenericFromERAI.py <https://github.com/atmoswing/tools-py/blob/master/scripts/createGenericFromERAI.py>`_). 
 
One must specify:

* ``dir_origin``: the main directory containing the original files
* ``dir_target``: the main directory to save the resulting files
* ``files_list``: a list of the files to transform containing the following entries:
    * the subdirectory containing the original files (for example ``pressure`` or ``surface_analysis``
    * the name of the variable in the original files
    * the name given to the variable in the resulting file.
