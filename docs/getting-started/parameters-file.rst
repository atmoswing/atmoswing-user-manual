.. _parameters-file:

Parameters file
===============

The parameters files are important elements in AtmoSwing as they define the structure of the analog method to use. It is where one defines the datasets, the predictor variables, the number of analogy levels, the spatial windows, etc...  Some elements vary between the Forecaster, the Optimizer and the Downscaler, and thus the target must be specified in the root tag (ex: ``<atmoswing version="1.0" target="optimizer">``).

The common basic structure is illustrated below and explained later.

.. code-block:: xml

    <?xml version="1.0" encoding="UTF-8"?>
    <atmoswing version="1.0" target="optimizer">
      <description>
        <method_id>2Z</method_id>
        <method_id_display>Classic circulation</method_id_display>
        <specific_tag>my region</specific_tag>
        <specific_tag_display>groupment of interest</specific_tag_display>
        <description>Classic analogy on the atmospheric circulation (2 levels)</description>
      </description>
      <time_properties>
        <archive_period>
          <start>01.01.1981</start>
          <end>31.12.2010</end>
        </archive_period>
        <time_step>24</time_step>
        <time_array_target>
          <time_array>simple</time_array>
        </time_array_target>
        <time_array_analogs>
          <time_array>days_interval</time_array>
          <interval_days>60</interval_days>
          <exclude_days>30</exclude_days>
        </time_array_analogs>
      </time_properties>
      <analog_dates>
        <analogs_number>40</analogs_number>
        <predictor>
          <preload>1</preload>
          <dataset_id>GenericNetcdf</dataset_id>
          <data_id>pl/z</data_id>
          <level>1000</level>
          <time>12</time>
          <spatial_window>
            <grid_type>regular</grid_type>
            <x_min>0.75</x_min>
            <x_points_nb>27</x_points_nb>
            <x_step>0.75</x_step>
            <y_min>42.75</y_min>
            <y_points_nb>11</y_points_nb>
            <y_step>0.75</y_step>
          </spatial_window>
          <criteria>S1</criteria>
          <weight>0.5</weight>
        </predictor>
        <predictor>
          <preload>1</preload>
          <dataset_id>GenericNetcdf</dataset_id>
          <data_id>pl/z</data_id>
          <level>500</level>
          <time>24</time>
          <spatial_window>
            <grid_type>regular</grid_type>
            <x_min>0.75</x_min>
            <x_points_nb>27</x_points_nb>
            <x_step>0.75</x_step>
            <y_min>42.75</y_min>
            <y_points_nb>11</y_points_nb>
            <y_step>0.75</y_step>
          </spatial_window>
          <criteria>S1</criteria>
          <weight>0.5</weight>
        </predictor>
      </analog_dates>
      <analog_values>
        <predictand>
          <station_id>9</station_id>
        </predictand>
      </analog_values>
    </atmoswing>

Content 'description'
---------------------

The content of ``<description>`` is mainly relevant for the Forecaster, where results are aggregated by methods for different regions.

* ``<method_id>``: An id given to the method (ex: 2Z)
* ``<method_id_display>``: The name of the method (ex: Classic circulation)
* ``<specific_tag>``: A tag to identify the specific settings. This is usually the name of the region for which the method was calibrated.
* ``<specific_tag_display>``: A more descriptive text for the provided ``<specific_tag>`` above.
* ``<description>``: A possible additionnal description.

Content 'time_properties'
-------------------------

The content of ``<time_properties>`` defines the archive period and other temporal properties.

Element 'archive_period'
~~~~~~~~~~~~~~~~~~~~~~~~

The content of ``<archive_period>`` defines the archive period where the analog situations will be extracted. Two options are possible:

Providing the exact dates:

* ``<start>``: Start of the archive period (ex: 01.01.1981)
* ``<end>``: End of the archive period (ex: 31.12.2010)

Or only providing the years:

* ``<start_year>``: Start of the archive period (ex: 1962)
* ``<end_year>``: End of the archive period (ex: 2008)

Element 'time_step'
~~~~~~~~~~~~~~~~~~~

The ``<time_step>`` is time step of the predictand (ex: 24), and thus of the method

Element 'time_array_target'
~~~~~~~~~~~~~~~~~~~~~~~~~~~

The content of ``<time_array_target>`` defines the temporal properties of the target.

* ``<time_array>``: Type of time selection.

The type can be one of the following:

* ``simple``: standard full temporal selection
* ``DJF``: Winter (Dec-Feb)
* ``MAM``: Spring (Mar-May)
* ``JJA``: Summer (Jun-Aug)
* ``SON``: Fall (Sep-Nov)
* ``predictand_thresholds``: Selection of days based on a predictand threshold (ex: days with more than x mm of precipitation)
* ``Month_to_Month``: Flexible selection of a period from one month to another month (ex: April_to_July, January_to_September, September_to_March)


Element 'time_array_analogs'
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The content of ``<time_array_analogs>`` defines the temporal properties of the analog selection. It is usually defined as a days interval (period of four months centered around the target date) using +-60 days around the target date. When working in a perfect prognosis framework, 30 days around the target date are excluded for the same year as the target date.

* ``<time_array>``: Type of time array. ``days_interval`` should be used.
* ``<interval_days>``: Number of days to select around the target date for every year. Usually: 60
* ``<exclude_days>``: Number of days to exclude around the target date for the same year. Usually: 30


Content 'analog_dates'
----------------------

The content of ``<analog_dates>`` defines the analogy for a given analogy level. Several analogy levels can be successively defined by adding more ``<analog_dates>`` blocks one after the other. Every new level (block) will then subsample from the previous level.

Element 'analogs_number'
~~~~~~~~~~~~~~~~~~~~~~~~

The tag ``<analogs_number>`` defined the number of analogs to select for the given analogy level.


Element 'predictor'
~~~~~~~~~~~~~~~~~~~

The element ``<predictor>`` provides information about the predictor, the spatial window and the criteria to use. Several predictors can be used together in an analogy level and are provided by adding more ``<predictor>`` blocks one after the other. The ``<predictor>`` element must define:

* ``<preload>``: Defines if the data must be loaded in memory or not (0/1; optional)
* ``<dataset_id>``: Defines the dataset to be used (:ref:`see the reanalyses list<reanalyses>`)
* ``<data_id>``: hgt</data_id>
* ``<level>``: 500</level>
* ``<time>``: 24</time>
* ``<criteria>``: S1</criteria>
* ``<weight>``: 0.6</weight>


* ``<spatial_window>``: 
* ``<x_min>``: -10</x_min>
* ``<x_points_nb>``: 9</x_points_nb>
* ``<x_step>``: 2.5</x_step>
* ``* ``<y_min>``: 30</y_min>
* ``<y_points_nb>``: 5</y_points_nb>
* ``<y_step>``: 2.5</y_step>
