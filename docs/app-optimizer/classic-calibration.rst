.. _classic-calibration:

Classic calibration
===================

The calibration procedure that we call "sequential" or "classic" was elaborated by :cite:t:`Bontron2004` (see also :cite:t:`Radanovics2013` and :cite:t:`BenDaoud2016`). It is a semi-automatic procedure that optimizes the spatial windows in which the predictors are compared and the number of analogs are systematically assessed for every level of analogy. The different analogy levels (e.g., the atmospheric circulation or moisture index) are calibrated sequentially. The procedure consists of the following steps :cite:p:`Bontron2004`:

1. Manual selection of the following parameters:

  * Meteorological variable
  * Pressure level
  * Temporal window (hour of the day)
  * Number of analogs

2. For every level of analogy:

  * Identification of the most skilled unitary cell (four points for the geopotential height when using the S1 criteria and one point otherwise) of the predictor data over a large domain. Every point or cell of the full domain is assessed based on the predictors of the current level of analogy.
  * From this most skilled cell, the spatial window is expanded by successive iterations in the direction of the most significant performance gain until no further improvement is possible (up to the user-specified maximum spatial window).
  * The number of analog situations Ni, which was initially set to an arbitrary value, is then reconsidered and optimized for the current level of analogy.

3. A new level of analogy can then be added based on other variables such as the moisture index at chosen pressure levels and hours of the day. The procedure starts again from step 2 (calibration of the spatial window and the number of analogs) for the new level. The parameters calibrated for the previous analogy levels are fixed and do not change.

4. Finally, the numbers of analogs for the different levels of analogy are reassessed. It is performed iteratively by varying the number of analogs of each level systematically.

The calibration is performed in successive steps for a limited number of parameters to minimize error functions or maximize skill scores. Except for the number of analogs, previously calibrated parameters are generally not reassessed. The benefit of this method is that it is relatively fast, it provides acceptable results, and it has low computing requirements. 


Classic+ calibration
--------------------

Small improvements were incorporated into this method in AtmoSwing Optimizer, then termed as "classic+", by allowing the spatial windows to perform other moves, such as: 

(1) an increase in 2 simultaneous directions, 
(2) a decrease in 1 or 2 simultaneous directions, 
(3) an expansion or contraction (in every direction), 
(4) a shift of the window (without resizing) in 8 directions (including diagonals), and finally 
(5) all the above, but with a factor of 2, 3, or more. For example, an increase by two grid points in one (or more) direction is assessed. It allows skipping one size that may not be optimal. 

These additional steps often result in spatial windows that are slightly different. The performance gain is rather marginal for reanalyses with a low resolution such as NR-1, but might be more consistent for reanalyses with higher resolutions due to the presence of more local minima.
