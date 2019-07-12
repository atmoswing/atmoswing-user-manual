.. AtmoSwing documentation master file, created by
   sphinx-quickstart on Fri May  4 17:05:14 2018.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

AtmoSwing's user documentation
==============================

:ref:`Analog methods (AMs) <analog-methods>` use synoptic-scale predictors to search in the past for similar days to a target day in order to infer the predictand of interest, such as daily precipitation. They can rely on outputs of numerical weather prediction (NWP) models in the context of operational forecasting or outputs of climate models in the context of climate impact studies. AMs require low computing capacity and have demonstrated useful potential for application in several contexts.

AtmoSwing is open-source software written in C++ that implements AMs in a flexible way so that different variants can be handled dynamically. It comprises four tools: a Forecaster for use in operational forecasting, a Viewer to display the results, a Downscaler for climate studies, and an Optimizer to establish the relationship between predictands and predictors.

:ref:`The Forecaster <app-forecaster>` handles every required processing internally, such as NWP output downloading (when possible) and reading as well as grid interpolation, without external scripts or file conversion. The processing of a forecast requires low computing efforts and can even run on a Raspberry Pi computer. It provides valuable results, as revealed by a 3-year-long operational forecast in the Swiss Alps.

:ref:`The Viewer <app-viewer>` displays the forecasts in an interactive GIS environment with several levels of synthesis and detail. This allows for the provision of a quick overview of the potential critical situations in the upcoming days, as well as the possibility for the user to delve into the details of the forecasted predictand and criteria distributions.

:ref:`The Downscaler <app-downscaler>` allows for the use of AMs in a climatic context, either for climate reconstruction or for climate change impact studies. When used for future climate studies, it is necessary to pay close attention to the selected predictors so that they contain the climate change signal.

:ref:`The Optimizer <app-optimizer>` implements different optimization techniques, such as a semiautomatic sequential approach, Monte Carlo simulations, and a global optimization technique, using genetic algorithms. Establishing a statistical relationship between predictors and predictands is computationally intensive because it requires numerous assessments over decades. To this end, the code was highly optimized for computing efficiency, is parallelized (using multiple threads), and scales well on a Linux cluster. This procedure is only required to establish the statistical relationship, which can then be used for forecasting or downscaling at a low computing cost.

Reference article: **Horton, P.: AtmoSwing: Analog Technique Model for Statistical Weather forecastING and downscalING (v2.1.0), Geosci. Model Dev., 12, 2915-2940, https://doi.org/10.5194/gmd-12-2915-2019, 2019.**

.. toctree::
   :maxdepth: 2
   :caption: Content

   getting-started
   app-forecaster
   app-viewer
   app-downscaler
   app-optimizer


Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`
