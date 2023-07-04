.. _parameters-file-optimizer:

Optimizer parameters file
=========================

The Optimizer has two different kinds of parameter files. One type for the classic and classic+ calibration (see `Classic calibration parameters file`_) and another for the optimization techniques using genetic algorithms or Monte-Carlo simulations (see `optimization parameters file`_). However, some attributes are identical for both of them.

Shared properties
-----------------

Content 'time_properties'
~~~~~~~~~~~~~~~~~~~~~~~~~

The content of ``<time_properties>`` is globally similar to the :ref:`standard parameters file<parameters-file>`, to the exception of a ``<calibration_period>`` and a ``<validation_period>`` element.

Element 'calibration_period'
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The content of ``<calibration_period>`` defines the target period on which the method is trained. It works as the ``<archive_period>`` element. Two options are possible:

Providing the exact dates:

* ``<start>``: Start of the calibration period (ex: 01.01.1981)
* ``<end>``: End of the calibration period (ex: 31.12.2010)

Alternatively, only providing the years:

* ``<start_year>``: Start of the calibration period (ex: 1981)
* ``<end_year>``: End of the calibration period (ex: 2010)

Element 'validation_period'
^^^^^^^^^^^^^^^^^^^^^^^^^^^

The content of ``<validation_period>`` defines the independent period that is reserved for validation. 

.. warning::
    The validation period must be covered by the calibration period (to correctly load the required data). AtmoSwing then handles the validation period by excluding it from the calibration period. Once again: the validation period must not provide dates that are not covered by the calibration period.
    
Two options are possible:

Providing a list of years (distributed over the calibration period):

* ``<years>``: List of years (ex: 1985, 1990, 1995, 2000, 2005, 2010)

Alternatively, providing a range of years:

* ``<start_year>``: Start of the validation period (ex: 2001)
* ``<end_year>``: End of the validation period (ex: 2010)

Content 'evaluation'
~~~~~~~~~~~~~~~~~~~~

The Optimizer has a ``<evaluation>`` node to specify the score to use and other characteristics:

.. code-block:: xml

  <evaluation>
    <score>CRPS</score>
    <time_array>simple</time_array>
  </evaluation>
  
Element 'score'
^^^^^^^^^^^^^^^

The name of the score to use must be provided. Options are listed here: :ref:`verification scores<verification-scores>`

Element 'time_array'
^^^^^^^^^^^^^^^^^^^^

The ``<time_array>`` element must be provided. It should however be set to ``simple`` as there are no other options available yet.

Other optional properties
^^^^^^^^^^^^^^^^^^^^^^^^^

Other options can be added to specify how the score should be processed.

* ``<threshold>``: Threshold to use for the processing of scores relying on thresholds exceedance, such as the contingency table. Example: ``<threshold>0.5</threshold>``
* ``<quantile>``: Quantile to use for the processing of scores relying on a single value rather than the distribution. Example: ``<quantile>0.9</quantile>``
* ``<on_mean>1</on_mean>``: Specifies to process the score on the mean of the analogs rather that a quantile (see above). For example, when used with the score ``MSE``. The value 1 has no meaning other than "true".

Classic calibration parameters file
-----------------------------------

The calibration parameters file defines the parameters to be calibrated and the range of the authorized values. There are different methods possible to define these options:

* ``minmax`` (the most used): you must provide a ``min`` value of the parameter, a ``max`` value and a ``step`` value. For example:

.. code-block:: xml

    <x_min min="-10" max="10" step="0.25" method="minmax"></x_min>

* ``array``: the content of the node will then be parsed as an array. For example:

.. code-block:: xml

    <station_id method="array">1,5,6,12,35</station_id>

* ``fixed``: should not be calibrated even if ``min`` and ``max`` values are defined. A value for the parameter must then be provided.

Root node
~~~~~~~~~

The ``target`` property of the root node needs to be ``calibrator``.

.. code-block:: xml

    <atmoswing version="1.0" target="calibrator">

Content 'analog_dates'
~~~~~~~~~~~~~~~~~~~~~~

The content of ``<analog_dates>`` is mostly similar to the :ref:`standard parameters file structure<parameters-file>`, but the parameters to calibrate need to be specified.

Element ‘analogs_number’
^^^^^^^^^^^^^^^^^^^^^^^^
This element varies the number of analog situations Ni to consider, for example:

.. code-block:: xml

      <analogs_number min="10" max="100" step="5" method="minmax"></analogs_number>

Element ‘spatial_window’
^^^^^^^^^^^^^^^^^^^^^^^^

This element defines the extent of the spatial window for each predictor. ``<x_min>`` and ``<y_min>`` are the minimum longitude and latitude respectively, ``<x_points_nb>`` and ``<y_points_nb>`` are the number of points from the predictor grid to use on the longitude and latitude axes, respectively. ``<x_step>`` and ``<y_step>`` are the longitude/latitude resolutions to use. This window needs to be defined for each predictor.

.. code-block:: xml

      <spatial_window>
        <x_min min="-10" max="10" step="0.25" method="minmax"></x_min>
        <x_points_nb min="2" max="120" step="1" method="minmax"></x_points_nb>
        <x_step>0.25</x_step>
        <y_min min="35" max="50" step="0.25" method="minmax"></y_min>
        <y_points_nb min="2" max="90" step="1" method="minmax"></y_points_nb>
        <y_step>0.25</y_step>
      </spatial_window>

Full example
~~~~~~~~~~~~

.. code-block:: xml

    <?xml version="1.0" encoding="UTF-8" ?>
    <atmoswing version="1.0" target="calibrator">
      <description>
        <method_id>PD-A4Z</method_id>
        <method_id_display>Enhanced circulation</method_id_display>
        <specific_tag>CH</specific_tag>
        <specific_tag_display>all stations</specific_tag_display>
        <description>Enhanced analogy on the atmospheric circulation (4 levels)</description>
      </description>
      <time_properties>
        <archive_period>
          <start_year>1981</start_year>
          <end_year>2010</end_year>
        </archive_period>
        <calibration_period>
          <start_year>1981</start_year>
          <end_year>2010</end_year>
        </calibration_period>
        <validation_period>
          <years>1985, 1990, 1995, 2000, 2005, 2010</years>
        </validation_period>
        <time_step>24</time_step>
        <time_array_target>
          <time_array>simple</time_array>
        </time_array_target>
        <time_array_analogs>
          <time_array>days_interval</time_array>
          <interval_days method="fixed">60</interval_days>
          <exclude_days>30</exclude_days>
        </time_array_analogs>
      </time_properties>
      <analog_dates>
        <analogs_number min="10" max="100" step="5" method="minmax"></analogs_number>
        <predictor>
          <preload>1</preload>
          <preprocessing>
            <preprocessing_method>SimpleGradients</preprocessing_method>
            <preprocessing_data>
              <dataset_id>ECMWF_ERA5</dataset_id>
              <data_id>pressure/z</data_id>
              <level>1000</level>
              <time>6</time>
            </preprocessing_data>
          </preprocessing>
          <spatial_window>
            <x_min min="-10" max="10" step="0.25" method="minmax"></x_min>
            <x_points_nb min="2" max="120" step="1" method="minmax"></x_points_nb>
            <x_step>0.25</x_step>
            <y_min min="35" max="50" step="0.25" method="minmax"></y_min>
            <y_points_nb min="2" max="90" step="1" method="minmax"></y_points_nb>
            <y_step>0.25</y_step>
          </spatial_window>
          <criteria>S1</criteria>
        </predictor>
        <predictor>
          <preload>1</preload>
          <preprocessing>
            <preprocessing_method>SimpleGradients</preprocessing_method>
            <preprocessing_data>
              <dataset_id>ECMWF_ERA5</dataset_id>
              <data_id>pressure/z</data_id>
              <level>1000</level>
              <time>30</time>
            </preprocessing_data>
          </preprocessing>
          <spatial_window>
            <x_min min="-10" max="10" step="0.25" method="minmax"></x_min>
            <x_points_nb min="2" max="120" step="1" method="minmax"></x_points_nb>
            <x_step>0.25</x_step>
            <y_min min="35" max="50" step="0.25" method="minmax"></y_min>
            <y_points_nb min="2" max="90" step="1" method="minmax"></y_points_nb>
            <y_step>0.25</y_step>
          </spatial_window>
          <criteria>S1</criteria>
        </predictor>
        <predictor>
          <preload>1</preload>
          <preprocessing>
            <preprocessing_method>SimpleGradients</preprocessing_method>
            <preprocessing_data>
              <dataset_id>ECMWF_ERA5</dataset_id>
              <data_id>pressure/z</data_id>
              <level>700</level>
              <time>24</time>
            </preprocessing_data>
          </preprocessing>
          <spatial_window>
            <x_min min="-10" max="10" step="0.25" method="minmax"></x_min>
            <x_points_nb min="2" max="120" step="1" method="minmax"></x_points_nb>
            <x_step>0.25</x_step>
            <y_min min="35" max="50" step="0.25" method="minmax"></y_min>
            <y_points_nb min="2" max="90" step="1" method="minmax"></y_points_nb>
            <y_step>0.25</y_step>
          </spatial_window>
          <criteria>S1</criteria>
        </predictor>
        <predictor>
          <preload>1</preload>
          <preprocessing>
            <preprocessing_method>SimpleGradients</preprocessing_method>
            <preprocessing_data>
              <dataset_id>ECMWF_ERA5</dataset_id>
              <data_id>pressure/z</data_id>
              <level>500</level>
              <time>12</time>
            </preprocessing_data>
          </preprocessing>
          <spatial_window>
            <x_min min="-10" max="10" step="0.25" method="minmax"></x_min>
            <x_points_nb min="2" max="120" step="1" method="minmax"></x_points_nb>
            <x_step>0.25</x_step>
            <y_min min="35" max="50" step="0.25" method="minmax"></y_min>
            <y_points_nb min="2" max="90" step="1" method="minmax"></y_points_nb>
            <y_step>0.25</y_step>
          </spatial_window>
          <criteria>S1</criteria>
        </predictor>
      </analog_dates>
      <analog_values>
        <predictand>
          <station_id min="1" max="100" step="1" method="minmax"></station_id>
        </predictand>
      </analog_values>
      <evaluation>
        <score>CRPS</score>
        <time_array>simple</time_array>
      </evaluation>
    </atmoswing>


      
Optimization parameters file
----------------------------

The optimization parameters file used for genetic algorithms or Monte Carlo simulations defines the parameters to be optimized and the range of the authorized values. There are different aspects to this:

* Defining the range of numerical values: a ``lowerlimit`` value of the parameter, an ``upperlimit`` value, and an ``iteration`` value must be provided. For example:

.. code-block:: xml

    <x_min lowerlimit="-10.5" upperlimit="10.5" iteration="0.75" lock="0"></x_min>

* Defining a list of values: the content of the node will then be parsed as an array. For example:

.. code-block:: xml

    <level method="array" lock="0">0, 300, 500, 850, 1000</level>

* The ``lock`` property allows to fix a value that will not be optimized even if ``lowerlimit`` and ``upperlimit`` values are defined, for example. You then need to provide a value for the parameter. It can be used to temporarily disable the calibration of a parameter. For example:

.. code-block:: xml

    <time lowerlimit="0" upperlimit="30" iteration="6" lock="1">18</time>

Root node
~~~~~~~~~

The ``target`` property of the root node needs to be ``optimizer``.

.. code-block:: xml

    <atmoswing version="1.0" target="optimizer">

Content 'analog_dates'
~~~~~~~~~~~~~~~~~~~~~~

The content of ``<analog_dates>`` is mostly similar to the :ref:`standard parameters file structure<parameters-file>`, but the parameters to calibrate need to be specified.


Element ‘analogs_number’
^^^^^^^^^^^^^^^^^^^^^^^^

This element varies the number of analog situations Ni to consider, for example:

.. code-block:: xml

      <analogs_number lowerlimit="5" upperlimit="80" iteration="1" lock="0"></analogs_number>

Element ‘predictor’
^^^^^^^^^^^^^^^^^^^

This element is used to define the parameters to calibrate related to the predictors. The structure is mostly similar to the :ref:`standard parameters file structure<parameters-file>`. The ``preload`` option specifies that the data should be preloaded prior to the calibration, which saves a substantial amount of time. For example:

Example:

.. code-block:: xml

    <predictor>
      <preload>1</preload>
      <dataset_id>GenericNetcdf</dataset_id>
	    <data_id method="array" lock="0">pl/r, pl/t, pl/u, pl/v, pl/z, sfa/msl</data_id>
      <level method="array" lock="0">0, 300, 500, 850, 1000</level>
  	  <time lowerlimit="0" upperlimit="30" iteration="6" lock="0"></time>
      <spatial_window>
        <x_min lowerlimit="-10.5" upperlimit="10.5" iteration="0.75" lock="0"></x_min>
        <x_points_nb lowerlimit="1" upperlimit="40" iteration="1" lock="0"></x_points_nb>
        <x_step>0.75</x_step>
        <y_min lowerlimit="35.25" upperlimit="50.25" iteration="0.75" lock="0"></y_min>
        <y_points_nb lowerlimit="1" upperlimit="30" iteration="1" lock="0"></y_points_nb>
        <y_step>0.75</y_step>
      </spatial_window>
      <criteria method="array" lock="0">MD, RMSE, S0, S1, S2</criteria>
    </predictor>


Full example
~~~~~~~~~~~~

.. code-block:: xml

    <?xml version="1.0" encoding="UTF-8" ?>
    <atmoswing version="1.0" target="optimizer">
      <description>
        <method_id>PD-A1Xo</method_id>
        <method_id_display>1 level optimized</method_id_display>
        <specific_tag>CH</specific_tag>
        <specific_tag_display>1 station</specific_tag_display>
        <description>1 level optimize</description>
      </description>
      <time_properties>
        <archive_period>
          <start_year>1981</start_year>
          <end_year>2010</end_year>
        </archive_period>
        <calibration_period>
          <start_year>1981</start_year>
          <end_year>2010</end_year>
        </calibration_period>
        <validation_period>
          <years>1985, 1990, 1995, 2000, 2005, 2010</years>
        </validation_period>
        <time_step>24</time_step>
        <time_array_target>
          <time_array>simple</time_array>
        </time_array_target>
        <time_array_analogs>
          <time_array>days_interval</time_array>
          <interval_days lock="1">60</interval_days>
          <exclude_days>30</exclude_days>
        </time_array_analogs>
      </time_properties>
      <analog_dates>
        <analogs_number lowerlimit="5" upperlimit="150" iteration="1" lock="0"></analogs_number>
        <predictor>
          <preload>1</preload>
          <dataset_id>GenericNetcdf</dataset_id>
          <data_id method="array" lock="0">pl/r, pl/t, pl/u, pl/v, pl/z, sfa/msl</data_id>
          <level method="array" lock="0">0, 300, 500, 850, 1000</level>
          <time lowerlimit="0" upperlimit="30" iteration="6" lock="0"></time>
          <spatial_window>
            <x_min lowerlimit="-10.5" upperlimit="10.5" iteration="0.75" lock="0"></x_min>
            <x_points_nb lowerlimit="1" upperlimit="40" iteration="1" lock="0"></x_points_nb>
            <x_step>0.75</x_step>
            <y_min lowerlimit="35.25" upperlimit="50.25" iteration="0.75" lock="0"></y_min>
            <y_points_nb lowerlimit="1" upperlimit="30" iteration="1" lock="0"></y_points_nb>
            <y_step>0.75</y_step>
          </spatial_window>
          <criteria method="array" lock="0">MD, RMSE, S0, S1, S2</criteria>
        </predictor>
      </analog_dates>
      <analog_dates>
        <analogs_number lowerlimit="5" upperlimit="80" iteration="1" lock="0"></analogs_number>
        <predictor>
          <preload>1</preload>
          <dataset_id>GenericNetcdf</dataset_id>
          <data_id method="array" lock="0">pl/r, pl/t, pl/u, pl/v, pl/z, sfa/msl</data_id>
          <level method="array" lock="0">0, 300, 500, 850, 1000</level>
          <time lowerlimit="0" upperlimit="30" iteration="6" lock="0"></time>
          <spatial_window>
            <x_min lowerlimit="-10.5" upperlimit="10.5" iteration="0.75" lock="0"></x_min>
            <x_points_nb lowerlimit="1" upperlimit="40" iteration="1" lock="0"></x_points_nb>
            <x_step>0.75</x_step>
            <y_min lowerlimit="35.25" upperlimit="50.25" iteration="0.75" lock="0"></y_min>
            <y_points_nb lowerlimit="1" upperlimit="30" iteration="1" lock="0"></y_points_nb>
            <y_step>0.75</y_step>
          </spatial_window>
          <criteria method="array" lock="0">MD, RMSE, S0, S1, S2</criteria>
        </predictor>
      </analog_dates>
      <analog_values>
        <predictand>
          <station_id>0</station_id>
        </predictand>
      </analog_values>
      <evaluation>
        <score>CRPS</score>
        <time_array>simple</time_array>
      </evaluation>
    </atmoswing>
