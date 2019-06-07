Usage
=====

The Optimizer implements different optimization techniques, such as a semi-automatic sequential approach, Monte-Carlo simulations, and a global optimization technique using genetic algorithms. Establishing a statistical relationship between predictors and predictands is computationally intensive because it requires numerous assessments over decades.

The calibration of the AM is usually performed in a perfect prognosis framework. Perfect prognosis uses observed or reanalyzed data to calibrate the relationship between predictors and predictands. As a result, perfect prognosis yields relationships that are as close as possible to the natural links between predictors and predictands. However, there are no perfect models and even reanalysis data may contain biases that cannot be ignored. Thus, the considered predictors should be as robust as possible, i.e., they should have minimal dependency on the model.

A statistical relationship is established with a trial and error approach by processing a forecast for every day of a calibration period. A certain number of days close to the target date are excluded to consider only independent candidate days. Validating the parameters of AMs on an independent validation period is very important to avoid over-parametrization and to ensure that the statistical relationship is valid for another period. In order to account for climate change and the evolution of measuring techniques, it is recommended that a noncontinuous period for validation should be used, distributed over the entire archive. AtmoSwing's users can thus specify a list of the years to set apart for the validation that are removed from possible candidate situations. At the end of the optimization, the validation score is processed automatically.

Requirements
------------

The Optimizer needs:

* :ref:`A predictand database <predictand-db>`
* :ref:`A predictors archive (e.g. a reanalysis dataset) <reanalyses>`
* :ref:`Parameters files defining the properties of the method. <parameters-file-optimizer>`

Outputs
-------

The Optimizer produces different files:

* A text file with the resulting best parameters set and the skill score (...best_parameters.txt).
* A text file with all the tested parameters set and their correponding skill score (...tested_parameters.txt).
* An xml file with the best parameters set (to be used further by AtmoSwing; ...best_parameters.xml).
* A NetCDF file containing the analog dates (AnalogDates...nc) both for the calibration and validation periods.
* A NetCDF file containing the analog values (AnalogValues...nc) both for the calibration and validation periods.
* A NetCDF file containing the performance scores (Scores...nc) both for the calibration and validation periods.


Graphical user interface
------------------------

The main interface of the Optimizer is as follows.





.. image:: img/frame-optimizer-controls.png
   :align: center

.. image:: img/frame-optimizer-options-calib.png
   :align: center
   
.. image:: img/frame-optimizer-options-gas.png
   :align: center
   
.. image:: img/icon_run.png
   
.. image:: img/icon_stop.png
   
.. image:: img/icon_preferences.png
   
