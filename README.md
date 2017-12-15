# Repository for Stanford PSYCH 221 class final project
# Stereo Depth
## Introduction
The brain is a fantastic super computer with unmatched 3D object recognition and depth estimation. The entire ocular system combined with over 20 color channels funneled into the great processing power of our visual cortex result in our capability to see. Stereo depth is a major part of this machinery and  in this paper we delve into the topic by investigating existing computer algorithms. Depth extraction from stereo estimation boils down to Triangulation. The papers seeks to explain three primary approaches and details surrounding stereo depth extraction.

## Background
Computer vision has seen explosive growth during the turn of the century; stereo depth in particular has seen its fair share of research due to its application in  panaroma Mosaic [Human FOV = 200 x 135°], better face tracking, facial recognition, autonomous driving, high resolution geometric sampling and many others. The result of this high interest is a plethora of algorithms and papers describing various ways of estimating depth from two images.
nto the the various e primary reason f extracting from stereo images takes advantage of triangulation re are three primary approaches to determining depth from stereo images, local optimia and the paper discuss these approaches and selects 3 algorithms to  differences of algorithms local optimization, global optimizaiont and

Depth Estimation is inherently an optimization problem.


## Methods
### Block based implementation
One Image is picked as a reference and then a block size is searched across the epipolar plane to identify a corresponding pixel on the paired image. Different cost functions can be used to determine the similarity between pixels. A winner takes all strategy is used for finding the location of a corresponding pixel in the search space.

### Global methods
Global methods handle occlusion and depth discontinuity much better than previous methods because the optimization is done at a global level. The global optimization implementation attempts to minimize an energy function. The global optimization space is a cost value per pixel(x,y) and disparity. The problem space quickly blows up when you think of an exhaustive search to minimize E(x,y,d) values. The global method is characterized by a data energy function that tries to minimize the error in identifying pixels and a smoothing function that is designed to model the similarity in depth between neighbouring pixels, since an exhaustive search is not tractable.

#### Simulated annealing
The simulated annealing implementation was first proposed by Stuart Geman and Donal Geman for restoring images using Bayesian approach [9] and later modified for use with stereo vision by Stephen T. Barnard [10]. The simulated annealing solution to depth estimation follows a method of gradually reducing a costing factor (temperature) using a Gibbs distribution. In the initial stages, big swings in x,y and d (state) are allowed so as to avoid finding local minima for the energy minimization task. The idea behind the solution is to pick a random state and make a small or big change in value to test a new state. If the new state minimizes the energy then capture that state. The method repeats these steps until we have a global minimum or we run out of temperature.


The method takes its inspiration from physical phenomena of high molecular activity at high temperatures and more stable fixed position of molecules at low temperatures. This method is guaranteed to reach the optimal solution but that guarantee is dependent on running to infinity.

#### Belief propagation
The belief propagation implementation of energy minimization is done by a message passing algorithm approach. Each neighbour broadcasts what it thinks its neighbours' value is supposed to be and in turn modifies own value after getting the opinion of its neighbours. You can imagine a bunch of forces pulling one way and another until a consensus is reached. Belief propagation doesn't have a mathematical proof or guarantee that a consensus can be reached to find global minima, but it is highly performant and is used for the quality of solutions that can be achieved by it.
#### Graph Cuts
Hiroshi Ishikawa introduced using min flow or max cut algorithm paradigms to solve the global optimization problem in 2003. Hiroshi asserts, "Simulated annealing has been used to solve certain MRF problems, although it is also notoriously slow" [12]. The solutions make use of a graph with vertices corresponding to pixels and edges corresponding to connections between pixels and neighbours. Once all the disparities per pixel have been evaluated for their energy cost we can continually break off connections with nieighbouring pixels with huge disparity jumps and try to minimize the overall cost.

### Other Methods
#### Dynamic programming
The energy minimization problem is a 2D NP-hard problem. However, dynamic programming can find the global minimum for independent scanlines in polynomial time[11] The algorithm works by calculating costs between pairs of scan lines across the image and then finding the minimum cost path. The reason all scan line pairs are compared is to prevent streaking artifacts; If only neighbouring (vertical or horizontal) scan lines are used we get a streaking effect since the minimum cost of a once-removed scan line doesn't factor in the finding a minimum path for the location.

#### Convolutional Neural networks

The latest algorithms have implemented various approaches to improving on the idea of a learned stereo matching. The cost optimization designs, whether global or local, seek to gain an answer to whether a reference pixel is similar or not to the pixel under comparison. The machine learning networks seek to improve on this comparison step by adding apriori knowledge. Difficult geometry and occlusion of disparate images are considered costs that are to be minimized in previously mentioned implementations. The learned neural nets attempt to be trained with various geometric image snippets with both positive and negative matches to be able to answer the question of similarity with apriori knowledge.


## Results
We ran images with Block and Markov random tree algorithms like Graph Cuts, Loopy Belief propagation and ICMs. The insights were that local implementations are fast but suscepible to depth discotinuities, while graph cuts perform better in those situations but take much longer.

## Conclusions
In this paper, we have given a wide range of topics related to the available solutions for stereo depth. The paper has attempted to describe the mathematical and computational components of a small piece of computer vision, namely stereo depth estimation. Surely, this is not an exhaustive review but the paper seeks to introduce the various approaches and their fundamental ideas.

The current state of the art with this problem set is wide and varied but with more stereo images with ground truths, the learned approaches are quickly becoming the norm. Although we take our innate capability of understanding the 3-dimensional geometry of the objects we see, the capability was enabled by a huge trove of a priori knowledge on top of the available planar intersection, shadow and ray tracing, relative size, convergence, defocus and accommodation cues. The world of computer vision is barely scratching the surface when compared to what nature has already perfected. The pace of innovation holds much promise that one day we will be able to outperform the human brain not only in depth perception but also in 3D reconstruction and recognition.

## Appendix
[1] A Comparative Study of Energy Minimization Methods for Markov Random Fields with Smoothness-Based Priors,
IEEE Transactions on Pattern Analysis and Machine Intelligence (TPAMI), 30(6):1068-1080, June 2008.
[2] http://szeliski.org/Book
[3]
[4] Information, Physics and Computatio
Marc Mezar, Andrea Montanari

The goal is to identify your algorithms [3].
Understanding, explaining, and contrasting the algorithms would be a good project. 
The evaluation of the algorithms is good, but more it is more important to focus on understanding how they work and the differences between the algorithms.
