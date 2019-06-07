.. _parameters-file-optimizer:

Optimizer's parameters file
===========================

The Optimizer has two different kinds of parameters files. One type for the classic(+) calibration (see `calibration parameters file`_) and another for the optimization (GAs and Monte-Carlo simulations; see `optimization parameters file`_). However, some attributes are similar for both of them.


Content 'time_properties'
-------------------------

The content of ``<time_properties>`` is globally similar to the standard parameters file, to the exception of a ``<calibration_period>`` and a ``<validation_period>`` element.

Element 'calibration_period'
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The content of ``<calibration_period>`` defines the target period on which the method is trained. It works as the ``<archive_period>`` element. Two options are possible:

Providing the exact dates:

* ``<start>``: Start of the calibration period (ex: 01.01.1981)
* ``<end>``: End of the calibration period (ex: 31.12.2010)

Or only providing the years:

* ``<start_year>``: Start of the calibration period (ex: 1981)
* ``<end_year>``: End of the calibration period (ex: 2010)

Element 'validation_period'
~~~~~~~~~~~~~~~~~~~~~~~~~~~

The content of ``<validation_period>`` defines the independent period that is reserved for validation. 

.. warning::
    The validation period must be covered by the calibration period (to correctly load the required data). AtmoSwing then handles the validation period by excluding it from the calibration period. Once again: the validation period must not provide dates that is not covered by the calibration period.
    
Two options are possible:

Providing a range of years:

* ``<start_year>``: Start of the validation period (ex: 2001)
* ``<end_year>``: End of the validation period (ex: 2010)

Or providing a list of years (distributed on the calibration period):

* ``<years>``: List of years (ex: 1985, 1990, 1995, 2000, 2005, 2010)


Calibration parameters file
===========================

The calibration parameters file defines the parameters to be calibrated and the range of the authorized values. There are different methods possible to define these options:

* ``minmax`` (the most used): you must provide a ``min`` value of the parameter, a ``max`` value and a ``step`` value. For example:

.. code-block:: xml

    <x_min min="-10" max="10" step="0.25" method="minmax"></x_min>

* ``array``: the content of the node will then be parsed as an array. For example:

.. code-block:: xml

    <station_id method="array">1,5,6,12,35</station_id>

* ``fixed``: should not be calibrated even if ``min`` and ``max`` values are defined. You then need to provide a value for the parameter.

Root node
---------

The ``target`` property of the root node needs to be ``calibrator``.

.. code-block:: xml

    <atmoswing version="1.0" target="calibrator">

Content 'analog_dates'
----------------------

The content of ``<analog_dates>`` is mostly similar to the basic parameters file structure, but the parameters to calibrate need to be specified.

Element ‘analogs_number’
~~~~~~~~~~~~~~~~~~~~~~~~

Example:

.. code-block:: xml

      <analogs_number min="10" max="100" step="5" method="minmax"></analogs_number>

Element ‘spatial_window’
~~~~~~~~~~~~~~~~~~~~~~~~

Example:

.. code-block:: xml

      <spatial_window>
        <x_min min="-10" max="10" step="0.25" method="minmax"></x_min>
        <x_points_nb min="2" max="120" step="1" method="minmax"></x_points_nb>
        <x_step>0.25</x_step>
        <y_min min="35" max="50" step="0.25" method="minmax"></y_min>
        <y_points_nb min="2" max="90" step="1" method="minmax"></y_points_nb>
        <y_step>0.25</y_step>
      </spatial_window>
      
      
Optimization parameters file
============================



