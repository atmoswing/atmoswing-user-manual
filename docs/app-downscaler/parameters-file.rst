.. _parameters-file-downscaler:

Downscaler parameters file
==========================

The parameters file for the Downscaler is based on the :ref:`generic parameters file for AtmoSwing<parameters-file>`, but has some specific elements as detailed below. A `full example`_ is provided at the bottom of the page.

Root node
---------

The ``target`` property of the root node needs to be ``downscaler``.

.. code-block:: xml

    <atmoswing version="1.0" target="downscaler">


Content 'time_properties'
-------------------------

The content of ``<time_properties>`` is globally similar to the standard parameters file, to the exception of a new ``<downscaling_period>`` element.

Element 'downscaling_period'
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The content of ``<downscaling_period>`` defines the target period. It works as the ``<archive_period>`` element. Two options are possible:

Providing the exact dates:

* ``<start>``: Start of the target period (ex: 01.01.2050)
* ``<end>``: End of the target period (ex: 31.12.2099)

Or only providing the years:

* ``<start_year>``: Start of the target period (ex: 2050)
* ``<end_year>``: End of the target period (ex: 2099)

Content 'analog_dates'
----------------------

The content of ``<analog_dates>`` is mostly similar to the basic parameters file structure. The difference is that two predictor datasets are needed: 

* ``<proj_dataset_id>``: Climate dataset
* ``<proj_data_id>``: Name of the variable in the climate dataset
* ``<archive_dataset_id>``: Archive dataset
* ``<archive_data_id>``: Name of the variable in the archive dataset

.. code-block:: xml

      <analog_dates>
        <analogs_number>30</analogs_number>
        <predictor>
          <proj_dataset_id>CORDEX</proj_dataset_id>
          <proj_data_id>hgt</proj_data_id>
          <archive_dataset_id>NCEP_Reanalysis_v1</archive_dataset_id>
          <archive_data_id>hgt</archive_data_id>
          ...
        </predictor>
        ...
      </analog_dates>


Full example
------------

Example of a parameters file for the Downscaler:

.. code-block:: xml

    <?xml version="1.0" encoding="UTF-8" ?>
    <atmoswing version="1.0" target="downscaler">
      <description>
        <method_id>2Z</method_id>
        <method_id_display>Classic circulation</method_id_display>
        <specific_tag>somewhere</specific_tag>
        <specific_tag_display>groupment of interest</specific_tag_display>
        <description>Classic analogy on the atmospheric circulation (2 levels)</description>
      </description>
      <time_properties>
        <archive_period>
          <start_year>1962</start_year>
          <end_year>2008</end_year>
        </archive_period>
        <downscaling_period>
          <start_year>2050</start_year>
          <end_year>2099</end_year>
        </downscaling_period>
        <time_step>24</time_step>
        <time_array_target>
          <time_array>simple</time_array>
        </time_array_target>
        <time_array_analogs>
          <time_array>days_interval</time_array>
          <interval_days>60</interval_days>
          <exclude_days>60</exclude_days>
        </time_array_analogs>
      </time_properties>
      <analog_dates>
        <analogs_number>100</analogs_number>
        <predictor>
          <preload>1</preload>
          <proj_dataset_id>CORDEX</proj_dataset_id>
          <proj_data_id>zg500</proj_data_id>
          <archive_dataset_id>NCEP_Reanalysis_v1</archive_dataset_id>
          <archive_data_id>hgt</archive_data_id>
          <level>500</level>
          <time>24</time>
          <spatial_window>
            <x_min>-10</x_min>
            <x_points_nb>9</x_points_nb>
            <x_step>2.5</x_step>
            <y_min>30</y_min>
            <y_points_nb>5</y_points_nb>
            <y_step>2.5</y_step>
          </spatial_window>
          <criteria>S1</criteria>
          <weight>0.6</weight>
        </predictor>
        <predictor>
          <preprocessing>
            <preprocessing_method>SimpleGradients</preprocessing_method>
            <preprocessing_data>
              <proj_dataset_id>CORDEX</proj_dataset_id>
              <proj_data_id>zg850</proj_data_id>
              <archive_dataset_id>NCEP_Reanalysis_v1</archive_dataset_id>
              <archive_data_id>hgt</archive_data_id>
              <level>850</level>
              <time>12</time>
            </preprocessing_data>
          </preprocessing>
          <spatial_window>
            <x_min>-15</x_min>
            <x_points_nb>11</x_points_nb>
            <x_step>2.5</x_step>
            <y_min>35</y_min>
            <y_points_nb>7</y_points_nb>
            <y_step>2.5</y_step>
          </spatial_window>
          <criteria>S1</criteria>
          <weight>0.4</weight>
        </predictor>
      </analog_dates>
      <analog_values>
        <predictand>
          <station_id>40</station_id>
        </predictand>
      </analog_values>
    </atmoswing>
