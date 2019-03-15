Usage
=====

The Forecaster allows to process an analog method based on the the latest available NWP outputs or for a given date. The real-time forecast calculation can be performed by a standard computer, without special resources. The forecast can be executed on demand through a graphical user interface or can be automated through the use of a command line interface. Both aspects are explained hereafter.

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
   
The processed analog methods are those listed in the lower half of the interface. The methods can differ in terms of structure or parameters for example to be adapted for a subregion. The methods are executed one after the other. A |icon_bullet_yellow| icon means that the model is being processed, |icon_bullet_green| that the calculations have been successfully performed and |icon_bullet_red| that the forecast has failed for this method.

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

The list of analog methods can be completed or methods can be deleted. A method here is a specific parameterization of an analog method optimal for a leadtime or a region. It is represented in the graphical user interface by a choice of a parameters file. An entry can be removed with the |icon_close| icon and new ones can be added using the |icon_plus| icon below the list.

When the list of methods has been modified and should be kept as default, it is necessary to save it, otherwise the list will be reset during the software restart. This is done by the menu 'File / Save batch file'.

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

The Forecaster also has a command line interface. This makes it possible to automate forecasts on a server. A scheduled task can then be added on a server (ex: Task Scheduler on Windows or Cron task on Linux). The options are as follows:

-h, --help  Displays the help of command line options
-c, --config  Configure the forecaster
-v, --version  Displays the software version
-f, --batch-file=file  Batch file to use for the forecast (full path)
-n, --forecast-now  Run forecast for the latest available data
-p, --forecast-past=nb_days  Run forecast for the given number of past days
-d, --forecast-date=<YYYYMMDDHH>  Run forecast for a specified date
-l, --log-level=n  Set the log level (0: minimum, 1: errors, 2: warnings (default), 3: verbose)
--proxy=<host[:port]>  Use proxy on given port
--proxy-user=<user[:password]>  Proxy user and password

