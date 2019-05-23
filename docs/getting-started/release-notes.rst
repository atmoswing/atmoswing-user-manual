.. _release-notes:

Release notes
=============


v2.1.0
------
23.05.2019

### Added


### Changed


### Fixed


v2.0.1
------
12.12.2018

### Added


### Changed


### Fixed



v2.0.0
------
19.11.2018

### Added


### Changed


### Fixed



v1.5.0
------
30.01.2017

### Added


### Changed


### Fixed


v1.4.3
------
21.07.2016

### Added


### Changed


### Fixed


v1.4.2
------
18.08.2015

### Added

* Addition of the 300hPa level for GFS.
* Highlight the optimal method for the station in the distribution plot and the analogs list.

### Changed

* Newly created workspace now opens automatically.
* Do not load already loaded forecasts.
* Do not display the station height when null.
* Handle file opening when double-clicking.
* Improving CL usage.
* Reload forecasts previously processed if an export is required.

### Fixed

* Removal of a forecast from the GUI now works as expected.
* Removing Projection specification from WMS files.
* Past forecasts do load again.


v1.4.1
------
19.03.2015

### Added

* Addition of the export options to the command line configuration.
* Addition of an overall progress display.

### Changed

* No need to reload forecasts after processing.
* Improving the display of former forecast files.
* TreeCtrl images of different resolutions.
* Change of every image/icon for a custom design.
* Full support implemented for high resolution screens.
* Updating the command line interface.
* Forcing UTF-8 in the netCDF files.
* Changing file version specification into major.minor

### Fixed

* Debugging accents issue under Linux.
* Removing « using namespace std » in order to keep a clean namespace resolution.
* Removing asFrameXmlEditor.
* Fix of a crash when no forecast is opened.
* Replacing printf with wxPrintf.
* Removing unnecessary .c_str() conversion on strings.
* Fix of a corruption in the wxFormbuilder project.
* Debugging netcdf issues under Linux.
* Fixing namespace issues.


v1.4.0
------
02.03.2015

### Added

* Addition of the export of a synthetic xml file.
* Addition of a tree control for the forecasts in the viewer.
* Addition of an automatic methods aggregation in the viewer.
* Creation of methods IDs.
* Specification of the station IDs for specific parameters files.
* New xml format for most files.

### Changed

* Update to the new GFS URLs and format.
* Adding a message in order to specify the selected models.
* Removal of the coordinate system specification for the predictors.
* Removing TiCPP in order to use the native xml handling from wxWidgets.
* Merging asCatalog and asCatalogPredictands.

### Fixed

* Cleaning up processing and use of quantiles.
* No need to reload forecasts after processing.


v1.3.3
------
12.01.2015

### Added

* Addition of buttons in the viewer frame to go backward and forward in time.
* Workspaces can now be saved to an xml file.
* Addition of a wizard to create the workspace.
* Addition of a control on the changes of the workspace to save before closing.
* Addition of a configuration option in the forecaster.

### Changed

* Separation of the preferences.
* Definition of the preferences in the workspace.
* Change of the configuration option by using a given batch file.
* The loading of predictor data has significantly changed.
* Better handles user errors in the parameters files.
* Hide the elevation information when not available.
* Changing the name of the U/V axis into X/Y to help users.

### Fixed

* Cleanup of the forecaster config options.
* Cleanup of the calibrator config options.
* Correction of the path to the WMS layers.
* Bug fix of unspecified directories for the archive predictors.
* Limiting the number of parallel downloads.
* Fix of the cURL hang with parallel downloading.
* Removal of the definition of the analogs number on the forecast score.
* Fix of an issue with the colors storage in the workspace.
* Now keeps the same model selection when opening new forecasts.
* Now keeps the same lead time when opening new forecasts.


v1.3.2
------
01.09.2014

### Added

* Introduction of workspaces for the viewer.
* Addition of WMS basemaps layers.
* Merging the two viewer frames into one with a new lead time switcher.
* Addition of the ability to optimize on multiple time series together.
* Addition of the CRPS reliability skill score and removal of F0 loading methods.

### Changed

* Improvement of the rank histogram with bootstraping.
* Increase of boostraping to 10’000 for the rank histrogram.
* Reduction in time for the assessment of all scores.
* Improving performance by reducing reallocation.
* Changing the MergeCouplesAndMultiply method into FormerHumidityIndex.

### Fixed

* Fix of the paths for CUDA files.
* Fix of a linking issue with the viewer.
* Fix of a bug related to gradient preprocessing in validation.
* Minor bug fix on the evaluation of all forecasting scores.
* Removing of the S1 weighting method.
* Bug fix in the preloading option for the classic calibration parameters.
* Fix of a bug on the single instance checker.
* Limitation of the zoom level to avoid the memory issue related to GDAL caching mechanism.


v1.3.1
------
13.05.2014

### Changed

* Merge of the various CMake files into one project.

### Fixed

* Debugging the new build process under Linux.


v1.3.0
------
06.05.2014

### Added

* Implementation of GPU processing
* Addition of a predictand pattern file.
* Addition of compression to the forecast files.
* Addition of CPack files.
* Addition of a unit test on gradients preprocessing.

### Changed

* The archive and calibration periods can now start in the middle of a year.
* Better check the requested time limits when loading predictor data.

### Fixed

* Removing a memory leak when aborting the app initialization.
* Correction of the data ordering in the forecast results.
* Bug fix in the time arrays intervals construction.
* Fix of a bug in the validation processing with a partial final year.
* Correction of the rank histogram.
* Reduced cURL outputs and fix of the multithreaded downloads.
* Adding a missing MSVC dll in the installation package.


v1.2.0
------
26.02.2014

### Added

* Addition of the Calibrator source code.
* Addition of the rank histogram (Talagrand diagram)
* Addition of CRPS decomposition after Hersbach (2000).
* Addition of the generation of xml parameters files after the calibration.

### Changed

* The catalogs were removed for the predictors classes and new specific data classes were generated.
* Removing predictand database properties from parameters for calibration.
* Changing predictors file names.
* Changes in unit test filenames for more clarity.
* Better initialization of the scrolled window.
* Check fields in the parameters file of the forecaster and the calibrator.
* Change of the version message in CL.

### Fixed

* Fix of format errors in the GFS urls.
* Fix of an issue related to preprocessed predictors.
* Logging of the url was discarded due to formatting issues leading to crashes.
* Correction of bugs related to unit tests from the calibrator.
* Fix of errors related to Eigen vectors.
* Minor memory leaks were removed.
* Removal of compilation warnings.
* Casing fixed in the netCDF files.
* The logging in unit tests was improved.
* Fix of display issues in the sidebar.
* Simplification of the time management.
* Fix of errors related to optional parameters.
* Removal of false warnings.
* Resolving some unit tests failures.
* The precipitation predictand class has been secured for RowMajor and Colmajor.
* Removing the exhaustive calibration.
* Removal of intermediate results printing.


v1.1.0
------
30.10.2013

### Added

* The predictand DB is now generalized to data other than precipitation.
* The Forecaster is now working with various predictands.
* Addition of the option to build the Forecaster in CL without GUI.

### Changed

* Improvement of the CMake build process.
* Better management of the NaNs during processing.
* Significant changes in order to generalize the predictand DB class.

### Fixed

* Fix of a change in GDAL regarding GRIB2 files origin.
* Changing the order of includes in the asFileNetcdf class.
* Unwanted slashes in paths under Linux were removed.
* The viewer is now building again.
* Fix of some bugs in unit tests.


v1.0.3
------
18.10.2012

### Added

* Addition of data preloading functionality and data pointer sharing
* Preprocessing of the humidity flux and other variables combination.
* Addition of multithreading in the 2nd and following levels of analogy.
* Addition of functionalities to the threads manager.
* Handling of the NCEP reanalysis 2 dataset.
* Handling of the NOAA OI-SST dataset and addition of adapted criteria.
* Addition of the possibility to account for an axis shift in the predictor dataset.
* Addition of the others predictand and creation of a generic instance function.
* Addition of an option to stop calculation when there is NaN in data.
* Addition of bad allocation catching.

### Changed

* Some clean-up of unused code.
* Simplification of the file names of intermediate results.
* Better management of the threads.
* Improvement of the multithreading option management.
* Better clean-up after processing.
* Addition of typedefs.
* Creation of 2 separate log files for the viewer and the forecaster.
* Improvement of the CMake files.
* Small improvements to the time series plots.
* Insertion of many supplementary assertions.
* Clean-up of config paths default values.

### Fixed

* Addition of a critical section on the config pointer.
* Addition of critical sections for TiCPP.
* Addition of critical sections for NetCDF.
* Coordinates automatic fix was bugged in the parameters class.
* Fix of a bug when trying to sort array with size of 1.
* Bug fix in temporary file names creation.
* Bug fixed in the enumeration of units
* NetCDF file class may have badly estimated the array size.
* Fix of memory filling by logging in the time array class.


v1.0.2
------
27.01.2012

### Added

* Better control of the log targets in the command-line mode.

### Changed

* Data import from netCDF files is less sensitive to the data type.
* Much faster import of forecast files.

### Fixed

* The forecasting launch from the viewer has been fixed.
* Removal of the message box in the CL forecast.


v1.0.1
------
22.11.2011

### Added

* Export of forecast text files from the time series plot.
* Possibility to cancel the current forecast processing.

### Changed

* Faster check of previously existing forecast files: load predictand DB only when needed.
* Change from q30 to q20 in the precipitation distribution
* Display of the considered quantile and return period for the alarms panel
* Better frame size restoration with maximization detection.

### Fixed

* An error in the proxy port was fixed.
* Preference « /Plot/PastDaysNb » was sometimes 3 or 5. Set 3 everywhere.
* Do not load the same past forecasts twice in time series plots.


v1.0.0
------
09.11.2011

First official release
