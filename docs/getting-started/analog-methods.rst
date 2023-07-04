.. _analog-methods:

Some analog methods
===================

Different variants of AMs are presented here. These methods have varying degrees of complexity and comprise one or more subsequent levels of analogy with predictor variables of different kinds. The following content comes from :cite:t:`Horton2018b`.

The first method developed with NCEP/NCAR Reanalysis 1 by :cite:t:`Bontron2004`_ is based on the analogy of synoptic circulation on the geopotential height at two pressure levels (Z1000 at +12 h and Z500 at +24 h) and is known here as 2Z.
	
The 2Z method consists of the following steps: firstly, to cope with seasonal effects, candidate dates are extracted from the archive period within four months centered around the target date, for every year of the archive (PC: preselection on a calendar basis in Table below). Then, the analogy of the atmospheric circulation of a target date with every day from the preselection set (excluding +-30 days around the target date and an eventual validation period) is assessed by processing the S1 criterion :cite:p:`Teweles1954,Brown2012`, which is a comparison of gradients, over a defined spatial window (the domain on which the predictors are compared). S1 is processed on each level, and the average is then considered, here with the same weights.

.. math::
    S1=100 \frac {\displaystyle \sum_{i} \vert \Delta\hat{z}_{i} - \Delta z_{i} \vert} {\displaystyle \sum_{i} max\left\lbrace \vert \Delta\hat{z}_{i} \vert , \vert \Delta z_{i} \vert \right\rbrace }

where :math:`\Delta \hat{z}_{i}` is the difference in geopotential height between the i-th pair of adjacent points of gridded data describing the target situation, and :math:`\Delta z_{i}` is the corresponding observed geopotential height difference in the candidate situation. The smaller the values S1 are, the more similar the pressure fields.

The N1 dates, where N1 is a parameter to be calibrated, with the lowest values of S1 are considered as analogs to the target date. Then, the daily observed precipitation values of the N1 selected dates provide the empirical conditional distribution, considered as the probabilistic prediction for the target date.

Another method relying only on atmospheric circulation is based on the geopotential height on four combinations of pressure levels and temporal windows (4Z, Table below) at levels that were automatically selected by genetic algorithms for the upper Rhone catchment in Switzerland :cite:p:`Horton2017b`. The 4Z method was shown to outperform 2Z by exploiting more information from the geopotential height and by taking advantage of additional degrees of freedom, such as different spatial windows between the pressure levels and the introduction of weighting between them. However, the 4Z method presented here is a simplification of the results from :cite:t:`Horton2017b`, and only the selection of the optimal pressure levels and temporal windows are shown (Z1000 at +06 h and +30 h, Z700 at +24 h, and Z500 at +12 h).

The other methods considered hereafter add a second, or more, subsequent level(s) of analogy after the analogy of the atmospheric circulation, in a stepwise manner.

The next method adds a second level of analogy with moisture variables (method 2Z-2MI, Table below), using a moisture index (MI), which is the product of the total precipitable water (TPW) and the relative humidity at 850 hPa (RH850) :cite:p:`Bontron2004`. When adding a second level of analogy, N2 dates are subsampled from the N1 analogs of the atmospheric circulation, to end up with a smaller number of analog situations. When this second level of analogy is added, a higher number of analogs N1 is kept at the first level.  

Similar to the 4Z method, the 4Z-2MI is a simplification of the methods optimized by genetic algorithms in :cite:t:`Horton2017b`. It consists of a first level of analogy on the geopotential height at four pressure levels (Z1000 at +30 h, Z850 at +12 h, Z700 at +24 h, and Z400 at +12 h), different from 4Z, followed by the moisture index (MI) at two pressure levels (MI700 at +24 h and MI600 at +12 h).

To constrain the seasonal effect, :cite:t:`BenDaoud2016` replaced the calendar preselection (+- 60 days around the target date) by a preselection based on similarity of air temperature (T925 at +36 h and T600 at +12 h, at the nearest grid point). It allows a more dynamic screening of similar situations in terms of air masses as the seasonal signal is also present in the temperature data. The undesired mixing of spring and autumn situations is discussed in :cite:t:`Caillouet2016`. The number of preselected dates (N0) is equivalent to the number of days selected with the calendar approach and thus depends on the archive size. In this method, named PT-2Z-4MI, the analogy of the atmospheric circulation is the same as in the 2Z method, but the moisture analogy is different (MI925 and MI700 at +12 h and 24 h).

Subsequently, :cite:t:`BenDaoud2016` introduced an additional level of analogy between the circulation and the moisture analogy (PT-2Z-4W-4MI, Table below), based on the vertical velocity at 850 hPa (W850). This AM, named "SANDHY" for Stepwise Analogue Downscaling method for Hydrology :cite:p:`BenDaoud2016,Caillouet2016`, was primarily developed for large and relatively flat/lowland catchments in France (Saône, Seine). It has also been applied to the whole France territory by :cite:t:`Radanovics2013` with ERA-40 and by :cite:t:`Caillouet2016` with 20CR-V2b.

.. table:: Some analog methods listed by increasing complexity. P0 is the preselection (PC: on a calendar basis, that is, +-60 days around the target date), L1, L2, and L3 are the subsequent levels of analogy. The meteorological variables are: SLP -- mean sea level pressure, Z -- geopotential height, T -- air temperature, W -- vertical velocity, MI -- moisture index, which is the product of the relative humidity at the given pressure level and the total water column. The analogy criterion is S1 for SLP and Z and RMSE for the other variables.
   :widths: auto

   ==================  =============  =============  ===============  ============= 
         Method              P0             L1             L2              L3         
   ==================  =============  =============  ===============  =============  
   2Z                  PC             | Z1000\@12h                                   
                                      | Z500\@24h                                                   
   ------------------  -------------  -------------  ---------------  ------------- 
   4Z                  PC             | Z1000\@06h                                   
                                      | Z1000\@30h
                                      | Z700\@24h
                                      | Z500\@12h
   ------------------  -------------  -------------  ---------------  -------------  
   2Z-2MI              PC             | Z1000\@12h   MI850\@12+24h                
                                      | Z500\@24h
   ------------------  -------------  -------------  ---------------  ------------- 
   4Z-2MI              PC             | Z1000\@30h   | MI700\@24h                    
                                      | Z850\@12h    | MI600\@12h
                                      | Z700\@24h 
                                      | Z400\@12h
   ------------------  -------------  -------------  ---------------  ------------- 
   PT-2Z-4MI           | T925\@36h    | Z1000\@12h   | MI925\@12+24h                
                       | T600\@12h    | Z500\@24h    | MI700\@12+24h
   ------------------  -------------  -------------  ---------------  ------------- 
   PT-2Z-4W-4MI        | T925\@36h    | Z1000\@12h   | W850\@06-24h   MI925\@12+24h  
                       | T600\@12h    | Z500\@24h    | MI700\@12+24h
   ==================  =============  =============  ===============  =============  
