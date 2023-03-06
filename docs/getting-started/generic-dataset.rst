.. _generic-dataset:

Generic dataset
===============

In addition to the multiple reanalyses supported, AtmoSwing allows using a generic dataset as NetCDF files (``GenericNetcdf``). The files can be organized as follows (AtmoSwing will look for possible matches):

* A single file with the name of the desired predictor variable (ex: rh.nc)
* Yearly files with the year in the file name
* All the files in a directory. The files need to be named in order to be sorted chronologically.
  
File structure
--------------

The file needs to have four dimensions:

* lat: latitude
* lon: longitude
* level: needs to be defined even if there is no level (set to 0 in this case)
* time: needs to be expressed as Modified Julian Date (``days since 1858-11-17 00:00:00.0 +0:00``)

The generic dataset is different from the other datasets as there are no predefined variables. The name given to the variable must also be used in the xml parameters file.

Generate generic datasets
-------------------------

The `AtmoSwing Python toolbox repository <https://github.com/atmoswing/atmoswing-python-toolbox>`_ contains scripts to convert some reanalyses to the generic format (for example `scripts/createGenericFromERAI.py <https://github.com/atmoswing/atmoswing-python-toolbox/blob/main/examples/create_generic_from_ERAI.py>`_). 
 
One must specify:

* ``dir_origin``: the directory containing the original files
* ``dir_target``: the directory to save the resulting files
* ``files_list``: a list of the files to transform containing the following entries: 1) the subdirectory containing the original files (for example ``pressure`` or ``surface_analysis``), 2) the name of the variable in the original files, 3) the name given to the variable in the resulting file.

The scripts might need to be modified to suit other input formats or structures.
