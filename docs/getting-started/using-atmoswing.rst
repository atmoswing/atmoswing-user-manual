.. _using-atmoswing:

Using AtmoSwing
===============

AtmoSwing can be used for different purposes:

- in operational forecasting (the Forecaster),
- to downscale climate data (the Downscaler),
- to identify predictors for a certain predictand (the Optimizer).

For any use of AtmoSwing some data need to be prepared, and the method(s) must be calibrated. The following steps are usually required:

1. Get a dataset for the predictor archive. It is often a :ref:`reanalysis dataset <reanalyses>`. The impact of the choice of the dataset is discussed in :cite:t:`Horton2018b`.
2. Get a dataset for the target situation (NWP output for operational forecasting or GCM/RCM outputs for climate downscaling)
3. :ref:`Format the predictand data <predictand-db>`.
4. Calibrate/optimize the method using the Optimizer.

The datasets, predictor variables, number of analogy levels, spatial windows and most other parameters used for the analogue method are defined in the :ref:`parameters files <parameters-file>`.
