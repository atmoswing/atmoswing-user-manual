.. _predictand-db:

Predictand DB
=============

The preditand data (e.g. precipitation) must be prepared for use in AtmoSwing. A tool provided along AtmoSwing allows for the 'database' generation. Database generation consists of extracting data from text files and combining them into a NetCDF file.

During this data processing, Gumbel adjustments are automatically made to calculate the precipitation values corresponding to different return periods.

The interface for generating the precipitation database is accessible through the 'Tools / Build predictand DB' menu from any AtmoSwing software.

.. image:: img/frame-predictand-db-generator.png
   :align: center

The first step consists in choosing the type of database to generate. The options are as follows:

* Predictand parameter:
   * Precipitation
   * Temperature
   * Lightnings
   * Other
* Temporal resolution:
   * 24 hours
   * 6 hours
   * 1-hr MTW (moving time window, see [Horton2017]_)
   * 3-hr MTW (moving time window, see [Horton2017]_)
   * 6-hr MTW (moving time window, see [Horton2017]_)
   * 12-hr MTW (moving time window, see [Horton2017]_)
* Spatial aggregation:
   * Station
   * Groupment
   * Catchment

The resulting file will contain the raw predictand data, but can also contain transformed data when working with precipitation. The possible transformations are:

* A normalization of the precipitation amount by a chosen return period value (often 10 years)
* A transformation by the square root of the later values (see [Bontron2004]_)

Next, a couple of paths must be provided:

* The predictand catalog: `a catalog (xml file) <#predictand-catalog>`_ is required to provide some metadata on the different timeseries.
* The predictand data directory: the directoy containing the original predictand files.
* The file patterns description directory: the directoy containing `files defining the structure <#predictand-file-structure>`_ of the original predictand files.
* The destination directory: where the resulting file will be saved.


Predictand catalog
------------------


Predictand file structure
-------------------------




The selected database type will then be searched in the catalogue. It is therefore the latter that determines which network and which stations to include in the selection. The catalogue also contains information on the station's positioning and measurement periods. Finally, the data files and their structure are also determined by this same catalogue. The files will be searched in the directory entered in the first field (Select the predictand data directory). The structure defines how to read data files. This structure is described in files, located in the folder given under Select the directory containing the file patterns description.

After execution, a NetCDF file containing all the data necessary for the software is created in the chosen directory. This file also includes the station properties and allows us to do without the predictand catalogue for further operations.

Precipitation file structure

It was chosen not to force the user to transform his data into a specific format, but to let him describe the structure of his files. This must be done using files describing the structure of the series. However, a restriction is imposed: a data file must contain only one time series (single station).

Files can be structured in two common modes:

* Delimited by tabs (tabsdelimited)
* With constant line width (constantwidth)

An option (parsetime) allows you to read the time information, or ignore it. Reading this information allows an automatic check of the correct consistency of the dates between what the software thinks it is reading and what it is actually reading. It is therefore recommended to activate this option (parsetime = 1).

This type defines structured files in a very simple way, either with date elements (year, month, day) and data separated by tabs (see example below). The files contain exactly 2 header lines.

.. code:: text

	Timeseries processed by XY for the YZ project.
	average from station(s) : 8080 8010 
	1961	1	1	6.600000
	1961	1	2	2.600000
	1961	1	3	21.500000
	1961	1	4	4.500000
	1961	1	5	0.000000
	1961	1	6	5.800000
	1961	1	7	0.000000
	1961	1	8	3.400000
	1961	1	9	0.000000
	1961	1	10	1.500000

The structure describing such data files is as follows:

.. code:: xml

  <?xml version="1.0" encoding="UTF-8" ?>
  <atmoswing version="1.0">
    <pattern id="Basic_daily" name="Basic daily file structure with tabs">
      <structure_type>tabs_delimited</structure_type>
      <header_lines>2</header_lines>
      <parse_time>1</parse_time>
      <time>
        <year column="1"/>
        <month column="2"/>
        <day column="3"/>
      </time>
      <data>
        <value column="4"/>
      </data>
    </pattern>
  </atmoswing>

.. [Horton2017] Horton, P., Obled, C., & Jaboyedoff, M. (2017). The analogue method for precipitation prediction: finding better analogue situations at a sub-daily time step. Hydrology and Earth System Sciences, 21, 3307–3323. http://doi.org/10.5194/hess-21-3307-2017
.. [Bontron2004] Bontron, G. (2004). Prévision quantitative des précipitations: Adaptation probabiliste par recherche d’analogues. Utilisation des Réanalyses NCEP/NCAR et application aux précipitations du Sud-Est de la France. Institut National Polytechnique de Grenoble.
