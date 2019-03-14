.. _preprocessing:

Preprocessing routines
======================

The main preprocessing routines implemented are:

* Addition (``Addition``): add (point-wise) all the provided predictors.
* Average (``Average``): average (point-wise) all the provided predictors.
* Difference (``Difference``): process the difference (point-wise) between 2 predictor grids.
* Multiplication (``Multiplication`` or ``Multiply``): multiply (point-wise) all the provided predictors.
* Humidity (or moisture) index (``HumidityIndex``): multiply the relative humidity and the precipitable water
* Humidity (or moisture) flux (``HumidityFlux``): process the multiplication of the wind and the humidity index. Requires 4 predictors in the following order: 1) U wind, 2) V wind, 3) relative humidity and 4) precipitable water
* Wind speed (``WindSpeed``): process the wind speed with the provided U wind and V wind components.

The following preprocessing routines are usually not used directly (or are automatically handled by AtmoSwing): 

* Simple gradients (``SimpleGradients``): processing of differences between adjascent grid points by ignoring the horizontal distance.
* Real gradients (``RealGradients``): processing of real gradients between adjascent grid points (using the horizontal distance). This preprocessing method is automatically used when the analogy criteria is ``S1``.
* Simple gradients with gaussian weights (``SimpleGradientsWithGaussianWeights``): same as before, but with a weighting of the spatial field by a gaussian 'hat'-shaped pattern.
* Real gradients with gaussian weights (``RealGradientsWithGaussianWeights``): same as before, but with a weighting of the spatial field by a gaussian 'hat'-shaped pattern.
* Simple curvature (``SimpleCurvature``): processing of the 'curvature' between adjascent grid points by ignoring the horizontal distance.
* Real curvature (``RealCurvature``): processing of real 'curvature' between adjascent grid points (using the horizontal distance). This preprocessing method is automatically used when the analogy criteria is ``S2``.
* Simple curvature with gaussian weights (``SimpleCurvatureWithGaussianWeights``): same as before, but with a weighting of the spatial field by a gaussian 'hat'-shaped pattern.
* Real curvature with gaussian weights (``RealCurvatureWithGaussianWeights``): same as before, but with a weighting of the spatial field by a gaussian 'hat'-shaped pattern.
* Merge by half and multiply (``MergeByHalfAndMultiply``): not meant to be used anymore.
