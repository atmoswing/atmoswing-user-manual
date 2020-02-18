.. _verification-scores:

Verification scores
===================

The Optimizer has different verification scores implemented:

two different kinds of parameters files. One type for the classic(+) calibration (see `calibration parameters file`_) and another for the optimization (GAs and Monte-Carlo simulations; see `optimization parameters file`_). However, some attributes are similar for both of them.


You must provide the name of the score to use. Options are:

* CRPSS (Continuous ranked probability skill score): ``CRPSS``
* CRPS (Continuous ranked probability score): ``CRPS``
* CRPS accuracy: ``CRPSaccuracy``
* CRPS sharpness: ``CRPSsharpness``
* CRPS reliability: ``CRPSreliability``
* CRPS potential: ``CRPSpotential``
* Absolute difference of the frequency of null values: ``DF0``
* Proportion correct (contingency table): ``PC``
* Threat score (contingency table): ``TS``
* Bias (contingency table): ``BIAS``
* False alarm ratio (contingency table): ``FARA``
* Hit rate (contingency table): ``H``
* False alarm rate (contingency table): ``F``
* Heidke skill score (contingency table): ``HSS``
* Pierce skill score (contingency table): ``PSS``
* Gilbert skill score (contingency table): ``GSS``
* Mean absolute error: ``MAE``
* Mean squared error: ``MSE``
* Root mean squared error: ``RMSE``
* Brier score: ``BS``
* Brier skill score: ``BSS``
* Stable equitable error in probability space: ``SEEPS``
* The Verification Rank Histogram (Talagrand Diagram): ``RankHistogram``
* Reliability of the Verification Rank Histogram (Talagrand Diagram): ``RankHistogramReliability``