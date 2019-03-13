.. AtmoSwing documentation master file, created by
   sphinx-quickstart on Fri May  4 17:05:14 2018.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

AtmoSwing's user documentation
==============================

Analog methods (AMs) allow for the prediction of local meteorological variables of interest (predictand) such as the daily precipitation, on the basis of synoptic variables (predictors). They can rely on outputs of numerical weather prediction models in the context of operational forecasting or outputs of climate models in the context of climate impact studies. AMs require low computing capacity and have demonstrated a useful potential for application in several contexts. 

AtmoSwing is an open source software written in C++ that implements AMs in a flexible manner so that different variants can be handled dynamically. It comprises four tools: a Forecaster that performs operational forecasts, a Viewer for displaying the results, a Downscaler for climate studies, and an Optimizer for inferring the relationship between the predictand and predictors. 

[The Forecaster](/docs/app-forecaster) handles every required processing internally, such as operational predictor downloading (when possible) and reading, grid interpolation, etc., without external scripts or file conversion. The processing of a forecast is extremely low-intensive in terms of computing infrastructure and can even run on a Raspberry Pi computer.

[The Viewer](/docs/app-viewer) displays the forecasts in an interactive GIS environment. It contains several layers of syntheses and details in order to provide a quick overview of the potential critical events in the upcoming days, as well as the possibility for the user to delve into the details of the forecasted predictand and criteria distributions.

[The Downscaler](/docs/app-downscaler) allows the use of AMs in a climatic context, either for climate reconstruction or for climate change impact studies. When used for future climate studies, it is necessary to pay close attention to the selected predictors, so that they contain the climate change signal.

[The Optimizer](/docs/app-optimizer) implements different optimization techniques, such as a sequential approach, Monte--Carlo simulation, and a global optimization technique using genetic algorithms. The process of inferring a statistical relationship between predictors and predictand is quite intensive in terms of processing because it requires numerous assessments over decades. To this end, the Optimizer was highly optimized in terms of computing efficiency, is parallelized over multiple threads and scales well on a Linux cluster. This procedure is only required to infer the statistical relationship, which can then be used in forecasting or downscaling at a low computing cost.

.. toctree::
   :maxdepth: 2

   getting-started
   app-forecaster
   app-viewer
   app-downscaler
   app-optimizer
   data
   changelog
   faq


Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`
