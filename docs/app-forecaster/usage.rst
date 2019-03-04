Usage
=====

.. todo:: write

Compute a forecast using the graphical interface
------------------------------------------------

This tool allows you to do the following actions:

* Calculate the current forecast or for a given date
* Define the list of templates to be performed by default (also for command line mode)
* Generate the precipitation database

.. image:: img/frame-forecaster.png

The toolbar allows the following actions:

|icon_run| Run the forecast for the chosen date and time.

|icon_stop| Stop the current calculations.

|icon_preferences| Open the interface for setting preferences.

.. |icon_run| image:: img/icon_run.png
   
.. |icon_stop| image:: img/icon_stop.png

.. |icon_preferences| image:: img/icon_preferences.png

The real-time forecast calculation can be performed by a standard computer, without special resources. The forecast can be executed on demand through the graphical interface or command lines, which allows it to be automated on a server. Both aspects are explained below.

.. |bullet_white| image:: img/icon-bullet_white.png

.. image:: img/icon-close.png

.. image:: img/icon-plus.png


To perform a forecast, you must:

1. Choose the date from the calendar and the time below. When the software is started, the date and time are the current values. The |icon_update| icon then allows you to update to the current values.
2. Execute the forecast by clicking on the |icon_run| icon in the toolbar.

.. |icon_update| image:: img/icon-update.png

The models executed are those listed in the lower part of the interface. The editing of this list is described in the following Section. The models are executed one after the other. An |icon_bullet_yellow| icon means that the model is being calculated, |icon_bullet_green| that the calculations have been successfully performed and |icon_bullet_red| that the forecast has failed for this model.

.. |icon_bullet_green| image:: img/icon-bullet_green.png
   :width: 24
   :height: 24
   :scale: 50
   :align: middle

.. |icon_bullet_yellow| image:: img/icon-bullet_yellow.png

.. |icon_bullet_red| image:: img/icon-bullet_red.png
