Genetic algorithms
==================

.. todo:: write


Options presets
---------------

The optimization by genetic algorithms is controlled by many parameters. To facilitate its use, the recommended configurations were predefined and can be called as presets. Providing the following numbers (1-5) to the option `ga-config` is equivalent to these corresponding presets:

1. `-ga-conv-steps 30 -ga-pop-size 500 -ga-interm-gen 0.5 -ga-ope-nat-sel 0 -ga-ope-coup-sel 2 -ga-ope-cross 7 -ga-cross-bin-pt-nb 2 -ga-cross-bin-share-b 1 -ga-ope-mut 8`
2. `-ga-conv-steps 30 -ga-pop-size 500 -ga-interm-gen 0.5 -ga-ope-nat-sel 0 -ga-ope-coup-sel 2 -ga-ope-cross 7 -ga-cross-bin-pt-nb 2 -ga-cross-bin-share-b 1 -ga-ope-mut 9 -ga-mut-multi-scale-p 0.1`
3. `-ga-conv-steps 30 -ga-pop-size 500 -ga-interm-gen 0.5 -ga-ope-nat-sel 0 -ga-ope-coup-sel 2 -ga-ope-cross 7 -ga-cross-bin-pt-nb 2 -ga-cross-bin-share-b 1 -ga-ope-mut 4 -ga-mut-non-uni-p 0.1 -ga-mut-non-uni-gens 50 -ga-mut-non-uni-min-r 0.1`
4. `-ga-conv-steps 30 -ga-pop-size 500 -ga-interm-gen 0.5 -ga-ope-nat-sel 0 -ga-ope-coup-sel 2 -ga-ope-cross 7 -ga-cross-bin-pt-nb 2 -ga-cross-bin-share-b 1 -ga-ope-mut 4 -ga-mut-non-uni-p 0.1 -ga-mut-non-uni-gens 100 -ga-mut-non-uni-min-r 0.1`
5. `-ga-conv-steps 30 -ga-pop-size 500 -ga-interm-gen 0.5 -ga-ope-nat-sel 0 -ga-ope-coup-sel 2 -ga-ope-cross 7 -ga-cross-bin-pt-nb 2 -ga-cross-bin-share-b 1 -ga-ope-mut 4 -ga-mut-non-uni-p 0.2 -ga-mut-non-uni-gens 100 -ga-mut-non-uni-min-r 0.1`

Any of these options can be overridden by specifying it along with `ga-config`.