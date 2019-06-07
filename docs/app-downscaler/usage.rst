Usage
=====

The Downscaler allows the AMs to be used in a climatic context, either for climate reconstruction or for climate change impact studies. When used for future climate impact, the user must pay close attention to the selected predictors, so that they are able to represent the climate change signal. This is a relatively new field of application of AMs.

.. warning::
    The Downscaler is the last addition to AtmoSwing and has therefore not been tested/used as intensively as the other tools. You might encounter some bugs. Please report them as `GitHub issues <https://github.com/atmoswing/atmoswing/issues>`_ or contact directly the developer.

Requirements
------------

The Downscaler needs:

* :ref:`A predictand database <predictand-db>`
* :ref:`Predictors from the target period <data-downscaler>`
* :ref:`A predictors archive (e.g. a reanalysis dataset) <reanalyses>`
* :ref:`Parameters files defining the properties of the method. <parameters-file-downscaler>`

Outputs
-------

The Downscaler produces compressed **NetCDF files** containing:

* The values of the predictand for the target period
* The analog dates
* The values of the analogy criteria
* The target dates
* Some reference values (e.g. precipitation for different return periods)
* Some station metadata (id, name, coordinates, height)

Graphical user interface
------------------------

The main interface of the Downscaler is as follows.

.. image:: img/frame-downscaler.png
   :align: center

The toolbar allows the following actions:

- |icon_run| Run the forecast for the chosen date and time.
- |icon_stop| Stop the current calculations.
- |icon_preferences| Define the preferences.

.. |icon_run| image:: img/icon_run.png
   :align: middle
   
.. |icon_stop| image:: img/icon_stop.png
   :align: middle

.. |icon_preferences| image:: img/icon_preferences.png
   :align: middle
   
You need to provide:

* :ref:`The parameters file for downscaling <parameters-file-downscaler>`
* The predictand DB
* The directory containing the predictors for the archive period
* The directory containing the predictors for the target period
* The directory to save the downscaling results


Command line interface
----------------------

The Downscaler also has a command line interface. The options are as follows:

-h, --help  Displays the help of command line options
-v, --version  Displays the software version
-r, --run-number=nb  A given run number
-f, --file-parameters=file  File containing the downscaling parameters
--predictand-db=file  The predictand DB
--station-id=id  The predictand station ID
--dir-archive-predictors=dir  The archive predictors directory
--dir-scenario-predictors=dir  The scenario predictors directory
--downscaling-method=classic  Choice of the downscaling method (classic: classic downscaling)
-n, --threads-nb=n  Number of threads to use
-s, --silent  Silent mode
-l, --local  Work in local directory
-l, --log-level=n  Set the log level (0: minimum, 1: errors, 2: warnings (default), 3: verbose)
