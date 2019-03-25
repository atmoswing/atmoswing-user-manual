.. _parameters-file-forecaster:

Forecaster's parameters file
============================

The parameters files for the Forecaster are based on the :ref:`generic parameters file for AtmoSwing<parameters-file>`, but has some specific elements for the operational forecasting as detailed below. An full example is provided at the bottom of the page.

Root node
---------

The ``target`` property of the root node needs to be ``forecaster``.

.. code-block:: xml

    <atmoswing version="1.0" target="forecaster">

Content 'time_properties'
-------------------------

The ``<time_properties>`` property has no ``<time_array_target>`` element, but a ``<lead_time_days>`` element.

.. code-block:: xml

      <time_properties>
        ...
        <lead_time>
          <lead_time_days>0,1,2,3,4,5</lead_time_days>
        </lead_time>
        ...
      </time_properties>

Content 'analog_dates'
----------------------

The content of ``<analog_dates>`` is mainly similar to the basic parameters file structure. The differences are:

* ``<analogs_number>``: The number of analogs to extract is not a unique number as in the generic parameters file, but one value has to be provided for each lead time. The number of analogs to extract can thus increase with the lead time to take into account the increasing uncertainty of the NWP outputs.

For the operational forecasting, two datasets are needed: the NWP outputs and the archive dataset:

* ``<realtime_dataset_id>``: NWP outputs dataset
* ``<realtime_data_id>``: Name of the variable in the NWP outputs dataset
* ``<archive_dataset_id>``: Archive dataset
* ``<archive_data_id>``: Name of the variable in the archive dataset

.. code-block:: xml

      <analog_dates>
        <analogs_number>50,50,70,110,230,490</analogs_number>
        <predictor>
          <realtime_dataset_id>NWS_GFS_Forecast</realtime_dataset_id>
          <realtime_data_id>hgt</realtime_data_id>
          <archive_dataset_id>NCEP_Reanalysis_v1</archive_dataset_id>
          <archive_data_id>hgt</archive_data_id>
          ...
        </predictor>
        ...
      </analog_dates>


Example of a parameters file for the Forecaster:

.. code-block:: xml

    <?xml version="1.0" encoding="UTF-8" ?>
    <atmoswing version="1.0" target="forecaster">
      <description>
        <method_id>PC-AZ4o-AHI2o</method_id>
        <method_id_display>Humidité optimisée</method_id_display>
        <specific_tag>Cretes_sud</specific_tag>
        <specific_tag_display>Crêtes du sud</specific_tag_display>
        <description>Analogie de circulation atmopshérique humidité optimisée</description>
      </description>
      <time_properties>
        <archive_period>
          <start_year>1961</start_year>
          <end_year>2008</end_year>
        </archive_period>
        <lead_time>
          <lead_time_days>0,1,2,3,4,5</lead_time_days>
        </lead_time>
        <time_step>24</time_step>
        <time_array_analogs>
          <time_array>days_interval</time_array>
          <interval_days>60</interval_days>
          <exclude_days>60</exclude_days>
        </time_array_analogs>
      </time_properties>
      <analog_dates>
        <analogs_number>53,53,73,113,233,493</analogs_number>
        <predictor>
          <realtime_dataset_id>NWS_GFS_Forecast</realtime_dataset_id>
          <realtime_data_id>hgt</realtime_data_id>
          <archive_dataset_id>NCEP_Reanalysis_v1</archive_dataset_id>
          <archive_data_id>hgt</archive_data_id>
          <level>400</level>
          <time>18</time>
          <spatial_window>
            <grid_type>regular</grid_type>
            <x_min>2.5</x_min>
            <x_points_nb>5</x_points_nb>
            <x_step>2.5</x_step>
            <y_min>42.5</y_min>
            <y_points_nb>4</y_points_nb>
            <y_step>2.5</y_step>
          </spatial_window>
          <criteria>S1</criteria>
          <weight>0.33</weight>
        </predictor>
        <predictor>
          <realtime_dataset_id>NWS_GFS_Forecast</realtime_dataset_id>
          <realtime_data_id>hgt</realtime_data_id>
          <archive_dataset_id>NCEP_Reanalysis_v1</archive_dataset_id>
          <archive_data_id>hgt</archive_data_id>
          <level>700</level>
          <time>24</time>
          <spatial_window>
            <grid_type>regular</grid_type>
            <x_min>2.5</x_min>
            <x_points_nb>6</x_points_nb>
            <x_step>2.5</x_step>
            <y_min>42.5</y_min>
            <y_points_nb>2</y_points_nb>
            <y_step>2.5</y_step>
          </spatial_window>
          <criteria>S1</criteria>
          <weight>0.21</weight>
        </predictor>
        <predictor>
          <realtime_dataset_id>NWS_GFS_Forecast</realtime_dataset_id>
          <realtime_data_id>hgt</realtime_data_id>
          <archive_dataset_id>NCEP_Reanalysis_v1</archive_dataset_id>
          <archive_data_id>hgt</archive_data_id>
          <level>850</level>
          <time>12</time>
          <spatial_window>
            <grid_type>regular</grid_type>
            <x_min>-2.5</x_min>
            <x_points_nb>9</x_points_nb>
            <x_step>2.5</x_step>
            <y_min>40</y_min>
            <y_points_nb>4</y_points_nb>
            <y_step>2.5</y_step>
          </spatial_window>
          <criteria>S1</criteria>
          <weight>0.24</weight>
        </predictor>
        <predictor>
          <realtime_dataset_id>NWS_GFS_Forecast</realtime_dataset_id>
          <realtime_data_id>hgt</realtime_data_id>
          <archive_dataset_id>NCEP_Reanalysis_v1</archive_dataset_id>
          <archive_data_id>hgt</archive_data_id>
          <level>1000</level>
          <time>30</time>
          <spatial_window>
            <grid_type>regular</grid_type>
            <x_min>0</x_min>
            <x_points_nb>8</x_points_nb>
            <x_step>2.5</x_step>
            <y_min>37.5</y_min>
            <y_points_nb>5</y_points_nb>
            <y_step>2.5</y_step>
          </spatial_window>
          <criteria>S1</criteria>
          <weight>0.22</weight>
        </predictor>
      </analog_dates>
      <analog_dates>
        <analogs_number>24,24,34,54,164,344</analogs_number>
        <predictor>
          <preprocessing>
            <preprocessing_method>HumidityIndex</preprocessing_method>
            <preprocessing_data>
              <realtime_dataset_id>NWS_GFS_Forecast</realtime_dataset_id>
              <realtime_data_id>rhum</realtime_data_id>
              <archive_dataset_id>NCEP_Reanalysis_v1</archive_dataset_id>
              <archive_data_id>rhum</archive_data_id>
              <level>600</level>
              <time>18</time>
            </preprocessing_data>
            <preprocessing_data>
              <realtime_dataset_id>NWS_GFS_Forecast</realtime_dataset_id>
              <realtime_data_id>prwtr</realtime_data_id>
              <archive_dataset_id>NCEP_Reanalysis_v1</archive_dataset_id>
              <archive_data_id>prwtr</archive_data_id>
              <level>0</level>
              <time>18</time>
            </preprocessing_data>
          </preprocessing>
          <spatial_window>
            <grid_type>regular</grid_type>
            <x_min>5</x_min>
            <x_points_nb>3</x_points_nb>
            <x_step>2.5</x_step>
            <y_min>45</y_min>
            <y_points_nb>1</y_points_nb>
            <y_step>2.5</y_step>
          </spatial_window>
          <criteria>RMSE</criteria>
          <weight>0.39</weight>
        </predictor>
        <predictor>
          <preprocessing>
            <preprocessing_method>HumidityIndex</preprocessing_method>
            <preprocessing_data>
              <realtime_dataset_id>NWS_GFS_Forecast</realtime_dataset_id>
              <realtime_data_id>rhum</realtime_data_id>
              <archive_dataset_id>NCEP_Reanalysis_v1</archive_dataset_id>
              <archive_data_id>rhum</archive_data_id>
              <level>700</level>
              <time>12</time>
            </preprocessing_data>
            <preprocessing_data>
              <realtime_dataset_id>NWS_GFS_Forecast</realtime_dataset_id>
              <realtime_data_id>prwtr</realtime_data_id>
              <archive_dataset_id>NCEP_Reanalysis_v1</archive_dataset_id>
              <archive_data_id>prwtr</archive_data_id>
              <level>0</level>
              <time>12</time>
            </preprocessing_data>
          </preprocessing>
          <spatial_window>
            <grid_type>regular</grid_type>
            <x_min>5</x_min>
            <x_points_nb>3</x_points_nb>
            <x_step>2.5</x_step>
            <y_min>45</y_min>
            <y_points_nb>2</y_points_nb>
            <y_step>2.5</y_step>
          </spatial_window>
          <criteria>RMSE</criteria>
          <weight>0.61</weight>
        </predictor>
      </analog_dates>
      <analog_values>
        <predictand>
          <database>Precipitation-Daily-Station-MeteoSwiss-Rhone.nc</database>
          <station_ids>27,43,44</station_ids>
        </predictand>
      </analog_values>
    </atmoswing>


