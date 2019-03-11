Genetic algorithms
==================

.. todo:: write

See more details in: Horton, P., Jaboyedoff, M., & Obled, C. (2017). Global Optimization of an Analog Method by Means of Genetic Algorithms. Monthly Weather Review, 145(4), 1275–1294. http://doi.org/10.1175/MWR-D-16-0093.1


Options presets
---------------

The optimization by genetic algorithms is controlled by many parameters. To facilitate its use, the recommended configurations were predefined and can be called as presets.

--ga-config=<1-5>  Operators presets 

Providing the following numbers (1-5) to the option ga-config is equivalent to these corresponding presets (for example, --ga-config=2 corresponds to the multiscale mutation with predefined options):

``--ga-conv-steps 30 --ga-pop-size 500 --ga-interm-gen 0.5 --ga-ope-nat-sel 0 --ga-ope-coup-sel 2 --ga-ope-cross 7 --ga-cross-bin-pt-nb 2 --ga-cross-bin-share-b 1``

1. Chromosome of adaptive search radius: ``--ga-ope-mut 8``
2. Multiscale mutation: ``--ga-ope-mut 9 --ga-mut-multi-scale-p 0.1``
3. Nonuniform mutation (pmut=0.1, Gmr=50, w=0.1): ``--ga-ope-mut 4 --ga-mut-non-uni-p 0.1 --ga-mut-non-uni-gens 50 --ga-mut-non-uni-min-r 0.1``
4. Nonuniform mutation (pmut=0.1, Gmr=100, w=0.1): ``--ga-ope-mut 4 --ga-mut-non-uni-p 0.1 --ga-mut-non-uni-gens 100 --ga-mut-non-uni-min-r 0.1``
5. Nonuniform mutation (pmut=0.2, Gmr=100, w=0.1): ``--ga-ope-mut 4 --ga-mut-non-uni-p 0.2 --ga-mut-non-uni-gens 100 --ga-mut-non-uni-min-r 0.1``

Enter: ``run`` here

Any of these options can be overridden by specifying it along with ga-config.


All options
-----------

The different operators can be controlled with the following options:

--ga-ope-nat-sel=<0-1>  Operator choice for natural selection: 

                        0. ratio elitism
                        1. tournament selection
                        
--ga-ope-coup-sel=<0-4>  Operator choice for couples selection:

                         0. rank pairing
                         1. random
                         2. roulette wheel on rank
                         3. roulette wheel on score
                         4. tournament competition
                         
--ga-ope-cross=<0-9>  Operator choice for chromosome crossover:

                      0. single point crossover
                      1. double points crossover
                      2. multiple points crossover
                      3. uniform crossover
                      4. limited blending
                      5. linear crossover
                      6. heuristic crossover
                      7. binary-like crossover
                      8. linear interpolation
                      9. free interpolation
                      
--ga-ope-mut=<0-10>  Operator choice for mutation:

                     0. random uniform constant
                     1. random uniform variable
                     2. random normal constant
                     3. random normal variable
                     4. non uniform
                     5. self adaptation rate
                     6. self adaptation radius
                     7. self adaptation rate chromosome
                     8. self adaptation radius chromosome
                     9. multi-scale
                     10. no mutation
                     
--ga-pop-size=<int>  Size of the population

--ga-conv-steps=<int>  Number of generations for convergence

--ga-interm-gen=<0-1>  Ratio of the intermediate generation

--ga-nat-sel-tour-p=<0-1>  Natural selection - tournament probability

--ga-coup-sel-tour-nb=<2/3>  Couples selection - tournament candidates (2/3)

--ga-cross-mult-pt-nb=<int>  Standard crossover - number of points

--ga-cross-blen-pt-nb=<int>  Blending crossover - number of points

--ga-cross-blen-share-b=<1/0>  Blending crossover - beta shared (1/0)

--ga-cross-lin-pt-nb=<int>  Linear crossover - number of points

--ga-cross-heur-pt-nb=<int>  Heuristic crossover - number of points

--ga-cross-heur-share-b=<1/0>  Heuristic crossover - beta shared (1/0)

--ga-cross-bin-pt-nb=<int>  Binary-like crossover - number of points

--ga-cross-bin-share-b=<1/0>  Binary-like crossover - beta shared (1/0)

--ga-mut-unif-cst-p=<0-1>  Uniform mutation - probability

--ga-mut-norm-cst-p=<0-1>  Normal mutation - probability

--ga-mut-norm-cst-dev=<sd>  Normal mutation - standard deviation

--ga-mut-unif-var-gens=<int>  Variable uniform mutation - generations nb

--ga-mut-unif-var-p-strt=<0-1>  Variable uniform mutation - starting probability

--ga-mut-unif-var-p-end=<0-1>  Variable uniform mutation - end probability

--ga-mut-norm-var-gens-p=<int>  Variable normal mutation - generations nb for probability

--ga-mut-norm-var-gens-d=<int>  Variable normal mutation - generations nb for std deviation

--ga-mut-norm-var-p-strt=<0-1>  Variable normal mutation - starting probability

--ga-mut-norm-var-p-end=<0-1>  Variable normal mutation - end probability

--ga-mut-norm-var-d-strt=<sd>  Variable normal mutation - starting std deviation

--ga-mut-norm-var-d-end=<sd>  Variable normal mutation - end std deviation

--ga-mut-non-uni-p=<0-1>  Non uniform mutation - probability

--ga-mut-non-uni-gens=<int>  Non uniform mutation - generations nb

--ga-mut-non-uni-min-r=<0-1>  Non uniform mutation - minimum rate

--ga-mut-multi-scale-p=<0-1>  Multi-scale mutation - probability
