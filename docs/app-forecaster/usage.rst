Usage
=====

The Forecaster allows processing an analog method based on the latest available NWP outputs or for a given date. The real-time forecast calculation can be performed by a standard computer without specific resources. The forecast can be executed on demand through a graphical user interface or can be automated through the use of a command-line interface. Both aspects are explained hereafter.

By default, the Forecaster processes the last available forecast. However, it can also process a forecast for a given day in the past, provided the NWP outputs are available locally or remotely, or it can be executed to process the last x days. These options can also be executed once a day by a task manager to fill eventual gaps in the previous days. If the forecasts are already present, no computing resources are used.

A batch file can be provided to the GUI or the CLI. It contains the data and export paths as well as the analog methods to be applied (defined themselves in the xml parameter files). Automatic tasks can thus execute the Forecaster successively with different options, for example, for different regions. The results can be saved in different directories, or the same ones. 

Requirements
------------

The Forecaster needs:

* :ref:`A predictand database <predictand-db>`
* :ref:`Operational predictors from NWP outputs <data-forecaster>`
* :ref:`A predictors archive (e.g. a reanalysis dataset) <reanalyses>`
* :ref:`Parameters files defining the properties of the method. <parameters-file-forecaster>`

Outputs
-------

The Forecaster produces compressed **NetCDF files** containing:

* The values of the predictand for the different lead times
* The analog dates
* The values of the analogy criteria
* The target dates (lead times)
* The number of analogs for the different lead times
* Some reference values (e.g., precipitation for different return periods)
* Some station metadata (id, name, coordinates, height)

There is one file per variant of the analog method containing data for all stations of the database.

A **synthetic xml file** can also be generated (optional) to ease the integration of synthetic data on a web platform, for example.

The files are saved in a date-based directory structure (for example, 2019/04/23). The Viewer follows the same rules to look for new forecasts automatically. The output directory can be synchronized by means of a file-sharing client to distribute the forecasts (for example, `ownCloud <https://owncloud.org/>`_ or Dropbox).

Graphical user interface
------------------------

This tool allows to do the following actions:

* Process the latest forecast or for a given date
* Define the list of methods to be performed automatically (also in command line mode)

.. image:: img/frame-forecaster.png
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

To perform a forecast, one must:

1. Choose the date from the calendar and the time below. When the software is started, the date and time are set to the current values. The |icon_update| icon allows updating to the current values.
2. Start the forecast calculation by clicking on the |icon_run_s| icon in the toolbar.

.. |icon_update| image:: img/icon-update.png
   :width: 24
   :height: 24
   :scale: 70
   :align: middle

.. |icon_run_s| image:: img/icon_run.png
   :width: 32
   :height: 32
   :scale: 50
   :align: middle
   
The processed analog methods are those listed in the lower half of the interface. The methods can differ in terms of structure or parameters, for example, to be adapted for a subregion. The methods are executed one after the other. A |icon_bullet_yellow| icon means that the model is being processed, |icon_bullet_green| that the calculations have been successfully performed and |icon_bullet_red| that the forecast has failed for this method.

.. |icon_bullet_green| image:: img/icon-bullet_green.png
   :width: 24
   :height: 24
   :scale: 70
   :align: middle

.. |icon_bullet_yellow| image:: img/icon-bullet_yellow.png
   :width: 24
   :height: 24
   :scale: 70
   :align: middle

.. |icon_bullet_red| image:: img/icon-bullet_red.png
   :width: 24
   :height: 24
   :scale: 70
   :align: middle


Define the list of methods
~~~~~~~~~~~~~~~~~~~~~~~~~~

The list of analog methods can be completed, or methods can be deleted. A method here is a specific parameterization of an analog method optimal for a lead time or a region. It is represented in the graphical user interface by choice of a parameters file. An entry can be removed with the |icon_close| icon, and new ones can be added using the |icon_plus| icon below the list.

When the list of methods has been modified and should be kept as default, it is necessary to save it (menu 'File / Save batch file'); otherwise, the list will be reset at the software restart.

.. |icon_close| image:: img/icon-close.png
   :width: 24
   :height: 24
   :scale: 70
   :align: middle

.. |icon_plus| image:: img/icon-plus.png
   :width: 24
   :height: 24
   :scale: 70
   :align: middle


Command line interface
----------------------

The Forecaster also has a command-line interface, which makes it possible to automate forecasts on a server. A scheduled task can then be added on a server (ex: Task Scheduler on Windows or Cron task on Linux). The options are as follows:

-h, --help  Displays the help of command-line options
-c, --config  Configure the forecaster
-v, --version  Displays the software version
-f, --batch-file=<file>  Batch file to use for the forecast (full path)
-n, --forecast-now  Run forecast for the latest available data
-p, --forecast-past=<nb_days>  Run forecast for the given number of past days
-d, --forecast-date=<YYYYMMDDHH>  Run forecast for a specified date
-l, --log-level=<n>  Set the log level (0: minimum, 1: errors, 2: warnings (default), 3: verbose)
--proxy=<host[:port]>  Use proxy on given port
--proxy-user=<user[:password]>  Proxy user and password


Docker image
------------

A Docker image is available on DockerHub: https://hub.docker.com/r/atmoswing/forecaster

Get it with: ``docker pull atmoswing/forecaster``

The docker container for AtmoSwing Forecaster uses the same options that the `command line interface` (to the exception of the ``--config`` option). However, different directories need to be mounted in the docker container to allow AtmoSwing accessing the data and saving outputs. The necessary directories are (along with the proposed path in the docker container):

* config and log files: ``/app/config``
* resulting files: ``/app/results``
* exports (forecasts synthesis): ``/app/exports``
* parameters files: ``/app/params```
* predictors archives: ``/app/predictors/archive`` -> can be readonly 
* predictors realtime (eventually downloaded): ``/app/predictors/realtime``
* predictands: ``/app/predictands`` -> can be readonly 

For example, on Windows, the command can be (don't forget to allow Docker desktop to access the desired disk):

.. code-block:: guess

   docker run `
      --mount type=bind,source=D:\AtmoSwing\config,target=/app/config `
      --mount type=bind,source=D:\AtmoSwing\results,target=/app/results `
      --mount type=bind,source=D:\AtmoSwing\exports,target=/app/exports `
      --mount type=bind,source=D:\AtmoSwing\params,target=/app/params `
      --mount type=bind,source=D:\Data\ERA5,target=/app/predictors/archive,readonly `
      --mount type=bind,source=D:\AtmoSwing\predictors,target=/app/predictors/realtime `
      --mount type=bind,source=D:\AtmoSwing\predictands,target=/app/predictands,readonly `
      atmoswing/forecaster:latest -f /app/params/batch-docker.asfb -n

Or, on Linux:

.. code-block:: guess

   docker run \
      --mount type=bind,source=/path/for/config,target=/app/config \
      --mount type=bind,source=/path/for/atmoswing/outputs,target=/app/results \
      --mount type=bind,source=/path/for/atmoswing/exports,target=/app/exports \
      --mount type=bind,source=/path/to/parameter/files,target=/app/params \
      --mount type=bind,source=/path/to/archive/predictors/dir,target=/app/predictors/archive,readonly \
      --mount type=bind,source=/path/to/realtime/predictors/dir,target=/app/predictors/realtime,readonly \
      --mount type=bind,source=/path/to/predictands/dir,target=/app/predictands,readonly \
      atmoswing/forecaster:latest -f /app/params/batch-docker.asfb -n

Then, the batch file needs to contain the mounted directories in the docker container. If you changed the target directories above, you need to adapt them below as well. The batch file should look like:

.. code-block:: xml

   <?xml version="1.0" encoding="UTF-8"?>
   <atmoswing version="1.0" target="forecaster">
     <forecasts_output_directory>/app/results</forecasts_output_directory>
     <exports_output_directory>/app/exports</exports_output_directory>
     <parameters_files_directory>/app/params</parameters_files_directory>
     <predictors_archive_directory>/app/predictors/archive</predictors_archive_directory>
     <predictors_realtime_directory>/app/predictors/realtime</predictors_realtime_directory>
     <predictand_db_directory>/app/predictands</predictand_db_directory>
     <export_synthetic_xml>1</export_synthetic_xml>
     <forecasts>
       <filename>PC-4Z_Region1.xml</filename>
       <filename>PC-4Z_Region2.xml</filename>
       <filename>PC-4Z-2MI_Region1.xml</filename>
       <filename>PC-4Z-2MI_Region2.xml</filename>
       ...
     </forecasts>
   </atmoswing>

