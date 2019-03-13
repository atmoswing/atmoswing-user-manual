.. _using-atmoswing:

Using AtmoSwing
===============

AtmoSwing can be used for different purposes:

- in operational forecating (the Forecaster),
- to downscale climate data (the Downscaler),
- to identify predictors for a certain predictand (the Optimizer).

For any use of AtmoSwing some data need to be prepared and the method(s) must be calibrated. The following steps are usually required:

1. Get a dataset for the predictor archive. This is often a :ref:`reanalysis dataset <reanalyses>`. The impact of the choice of the dataset is discussed in [Horton2018]_.
2. Get a dataset for the target situation (NWP output for operational forecasting or GCM/RCM outputs for climate downscaling)
3. :ref:`Format the predictand data <predictand-db>`.
4. Calibrate/optimize the method using the Optimizer.


.. [Horton2018] Horton, P., & Brönnimann, S. (2018). Impact of global atmospheric reanalyses on statistical precipitation downscaling. Climate Dynamics. http://doi.org/10.1007/s00382-018-4442-6
