Preferences
===========

.. todo:: write

Batch file properties
---------------------

Different directories must be specified for real-time forecasting:

* Directory containing the forecast parameter files - contains the xml files defining by the method parameters
* Directory containing the predictors archives.
* Directory for recording downloaded predictors. Subdirectories are automatically created for each date according to the Year/Month/Day tree structure.
* Directory for recording forecast results - location where these results are stored. Subdirectories are also generated for each date.
* Directory containing the precipitation database - this database is a NetCDF file.

.. image:: img/preferences-paths-forecasting.png

Log options
-----------

Log preferences are specific to each tool. They define the display of the log window and the level of reported log:

1. Only errors - recommended as long as everything goes as planned.
2. Errors and warnings - some warnings help to be vigilant in case of problems. However, there might be warnings even during normal operation.
3. All messages - all operations are reported, which is an unnecessary amount of information during normal operation. As a result, important messages are hidden in the standard operating flow, the program is slowed down and its memory usage increases. This option is useful for identifying the source of an error in case of problems.

.. image:: img/preferences-general-log.png

Internet proxy
--------------

The proxy configuration contains the following elements:

* Proxy activation - if necessary.
* Proxy properties - provide the address, port, user name and password.

.. image:: img/preferences-general-proxy.png

Advanced options
----------------

The advanced options are automatically configured and usually do not need to be changed.

Graphical User Interface (GUI) options: Adjusts the behavior of the interface and its means of communication with the user. Saves calculation time by disabling dialog boxes. The choices are:

* Silent - no dialog box is displayed. The user must therefore keep an eye on the log window to detect any error. This option is only useful for very intensive calculations.
* Standard - recommended for standard use.
* Verbose - a bit more versose than the Standard option.

.. image:: img/preferences-adv-gui.png

Predictor Download: Options for automatic predictor download. The choices are:

* Number of attempts on previous data if the desired data cannot be downloaded; this number must be greater than 2 to ensure proper operation of the forecast tool. Indeed, the latest model results are never instantly accessible, but after a delay of several hours. In this case, we must take the most recent data available.
* Number of parallel downloads - parallel requests reduce download times. However, be careful not to put a too large number (5 being sufficient), at the risk of being excluded from the data server. It is currently recommended to do only one download at a time (put 1 in the field).

.. image:: img/preferences-adv-downloads.png

Advanced options: Different options specific to the software's behavior:

* Enable or disable the reactivity of the graphical interface. This option must always be enabled for standard use.
* Allow multiple instances of the forecasting software.

.. image:: img/preferences-adv-advancedoptions.png

Multithreading: options communes pour l'utilisation de threads. Les options sont:

* Activation - permet un gain en performance dans les calculs, mais peut devenir instable sur Windows (donc déconseillé).
* Nombre de threads - à choisir en fonction du processeur de l'ordinateur. Le nombre optimal de threads pour l'ordinateur utilisé est proposé automatiquement par le logiciel.
* La priorité des threads - permet de définir quelles sont les ressources que les threads peuvent disposer en concurrence avec les autres processus en cours.

.. image:: img/preferences-adv-multithreading.png

Processing options: These options influence the core of the calculation of the analogy search. They do not change the result, but the calculation time. The choices are as follows:

* Multithreaded - as long as the computer has at least two processors. This is clearly the fastest version, and it is even faster when the computer has processors. But, as mentioned above, calculations can become unstable on Windows and this option is therefore not recommended for Windows.
* Standard (Insertion in the date table) - this option is the second fastest and is perfectly stable (therefore recommended). The approach is to limit the size of the date vector to the desired number of analogues and to insert new dates as long as the analogy score is better than those already present.

.. image:: img/preferences-adv-processing.png

Current user paths: Indication of some paths used and automatically defined according to the OS: working directory, logs of the logs of the forecast and visualization software, files of the preferences of the forecast and visualization software.

.. image:: img/preferences-adv-userpaths.png
