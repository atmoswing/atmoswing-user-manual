Preferences
===========

The preferences frame can be opened from the menu Options / Preferences of the main interface.

Directories
-----------

Different directories must be specified:

* Directory containing the archive predictors (for example :ref:`reanalyses<reanalyses>`).
* Directory containing the predictand DB: contains the :ref:`NetCDF file generated from the predictand data<predictand-db>`.

.. image:: img/preferences-general-dirs.png
   :align: center
      
An additional directory can be specified to save optional intermediate files, for example between levels of analogy.

.. image:: img/preferences-adv-workingdirs.png
   :align: center
   
   
Log options
-----------

Log preferences control the display of the log window and the level (importance) of reported messages:

1. Errors only - recommended as long as everything goes as planned.
2. Errors and warnings - some warnings help to be vigilant in case of problems. However, there might be warnings even during normal operation.
3. Verbose - all operations are reported, which is an unnecessary amount of information during normal operation. As a result, important messages might be hidden in a large amount of messages. This option is only useful to identify where AtmoSwing is failing.
   
.. image:: img/preferences-general-log.png
   :align: center

Graphical User Interface (GUI) options
--------------------------------------

Adjusts the behavior of the interface and its means of communication with the user. Saves calculation time by disabling dialog boxes. The choices are:

* Silent - no dialog box is displayed. The user must therefore keep an eye on the log window to detect any error. This option is only useful for very intensive calculations.
* Standard - recommended for standard use.
* Verbose - a bit more versose than the Standard option.

.. image:: img/preferences-adv-gui.png
   :align: center

Multithreading
--------------

Options for using multiple threads:

* Allow multithreading - allows a gain in performance for the calculations (recommended).
* Maximum number of threads - to be chosen according to the computer's CPU. The optimal number of threads for the computer in use is automatically proposed by the software.
* Threads priority - allows to define the priority of the threads in competition with other ongoing processes.

.. image:: img/preferences-adv-multithreading.png
   :align: center
   
Processing options
------------------

These options influence how the search for analogs is performed, which has no impact on the results, only on the calculation time. The choices are as follows:

* Multithreaded - as long as the computer has at least two processors. This is by far the fastest version.
* Standard - this option is slower than the previous one as it uses a single thread. The approach is to limit the size of the date vector to the desired number of analogues and to insert new dates as long as the analogy score is better than those already present.

.. image:: img/preferences-adv-processing.png
   :align: center
   
User specific paths
-------------------

Some paths automatically defined according to the OS: working directory, log file, and preferences file.

.. image:: img/preferences-adv-userpaths.png
   :align: center
