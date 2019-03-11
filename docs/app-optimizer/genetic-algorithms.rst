Genetic algorithms
==================

.. todo:: write

See more details in: Horton, P., Jaboyedoff, M., & Obled, C. (2017). Global Optimization of an Analog Method by Means of Genetic Algorithms. Monthly Weather Review, 145(4), 1275–1294. http://doi.org/10.1175/MWR-D-16-0093.1


Options presets
---------------

--ga-ope-nat-sel=<1-5>  Operators presets 

The optimization by genetic algorithms is controlled by many parameters. To facilitate its use, the recommended configurations were predefined and can be called as presets. Providing the following numbers (1-5) to the option ga-config is equivalent to these corresponding presets (for example, --ga-config=2 corresponds to the multiscale mutation with predefined options):

1. Chromosome of adaptive search radius: --ga-conv-steps 30 --ga-pop-size 500 --ga-interm-gen 0.5 --ga-ope-nat-sel 0 --ga-ope-coup-sel 2 --ga-ope-cross 7 --ga-cross-bin-pt-nb 2 --ga-cross-bin-share-b 1 --ga-ope-mut 8
2. Multiscale mutation: --ga-conv-steps 30 --ga-pop-size 500 --ga-interm-gen 0.5 --ga-ope-nat-sel 0 --ga-ope-coup-sel 2 --ga-ope-cross 7 --ga-cross-bin-pt-nb 2 --ga-cross-bin-share-b 1 --ga-ope-mut 9 --ga-mut-multi-scale-p 0.1
3. Nonuniform mutation (pmut=0.1, Gmr=50, w=0.1): --ga-conv-steps 30 --ga-pop-size 500 --ga-interm-gen 0.5 --ga-ope-nat-sel 0 --ga-ope-coup-sel 2 --ga-ope-cross 7 --ga-cross-bin-pt-nb 2 --ga-cross-bin-share-b 1 --ga-ope-mut 4 --ga-mut-non-uni-p 0.1 --ga-mut-non-uni-gens 50 --ga-mut-non-uni-min-r 0.1
4. Nonuniform mutation (pmut=0.1, Gmr=100, w=0.1): --ga-conv-steps 30 --ga-pop-size 500 --ga-interm-gen 0.5 --ga-ope-nat-sel 0 --ga-ope-coup-sel 2 --ga-ope-cross 7 --ga-cross-bin-pt-nb 2 --ga-cross-bin-share-b 1 --ga-ope-mut 4 --ga-mut-non-uni-p 0.1 --ga-mut-non-uni-gens 100 --ga-mut-non-uni-min-r 0.1
5. Nonuniform mutation (pmut=0.2, Gmr=100, w=0.1): --ga-conv-steps 30 --ga-pop-size 500 --ga-interm-gen 0.5 --ga-ope-nat-sel 0 --ga-ope-coup-sel 2 --ga-ope-cross 7 --ga-cross-bin-pt-nb 2 --ga-cross-bin-share-b 1 --ga-ope-mut 4 --ga-mut-non-uni-p 0.2 --ga-mut-non-uni-gens 100 --ga-mut-non-uni-min-r 0.1

Any of these options can be overridden by specifying it along with ga-config.


All options
-----------

The different operators can be controlled with the following options:

--ga-ope-nat-sel=<int>  Operator choice for natural selection
--ga-ope-coup-sel=<int>  Operator choice for couples selection
--ga-ope-cross=<int>  Operator choice for chromosome crossover
--ga-ope-mut=<int>  Operator choice for mutation
--ga-pop-size=<int>  Size of the population
--ga-conv-steps=<int>  Number of generations for convergence
--ga-interm-gen=<int>  Ratio of the intermediate generation
--ga-nat-sel-tour-p=<int>  Natural selection - tournament probability
--ga-coup-sel-tour-nb=<int>  Couples selection - tournament candidates (2-3)
--ga-cross-mult-pt-nb=<int>  Standard crossover - number of points
--ga-cross-blen-pt-nb=<int>  Blending crossover - number of points
--ga-cross-blen-share-b=<1/0>  Blending crossover - beta shared (1/0)
--ga-cross-lin-pt-nb=<int>  Linear crossover - number of points
--ga-cross-heur-pt-nb=<int>  Heuristic crossover - number of points
--ga-cross-heur-share-b=<1/0>  Heuristic crossover - beta shared (1/0)
--ga-cross-bin-pt-nb=<int>  Binary-like crossover - number of points
--ga-cross-bin-share-b=<1/0>  Binary-like crossover - beta shared (1/0)
--ga-mut-unif-cst-p=<int>  Uniform mutation - probability
--ga-mut-norm-cst-p=<int>  Normal mutation - probability
--ga-mut-norm-cst-dev=<int>  Normal mutation - standard deviation
--ga-mut-unif-var-gens=<int>  Variable uniform mutation - generations nb
--ga-mut-unif-var-p-strt=<int>  Variable uniform mutation - starting probability
--ga-mut-unif-var-p-end=<int>  Variable uniform mutation - end probability
--ga-mut-norm-var-gens-p=<int>  Variable normal mutation - generations nb for probability
--ga-mut-norm-var-gens-d=<int>  Variable normal mutation - generations nb for std deviation
--ga-mut-norm-var-p-strt=<int>  Variable normal mutation - starting probability
--ga-mut-norm-var-p-end=<int>  Variable normal mutation - end probability
--ga-mut-norm-var-d-strt=<int>  Variable normal mutation - starting std deviation
--ga-mut-norm-var-d-end=<int>  Variable normal mutation - end std deviation
--ga-mut-non-uni-p=<int>  Non uniform mutation - probability
--ga-mut-non-uni-gens=<int>  Non uniform mutation - generations nb
--ga-mut-non-uni-min-r=<int>  Non uniform mutation - minimum rate
--ga-mut-multi-scale-p=<int>  Multi-scale mutation - probability
