# plot_random_functions.r
# Jack Webster
# 10/14/22

# Purpose:
# A function what will generate a random sample of normal values,
# plot a histogram with an overlaid mean and return summary statistics

# Inputs:
#   numpts = number of points to generate (50 default)
#   bins   = the number of breakpoints in the histogram (10 default)
#   mu     = mean of normal distribution (0 default)
#   sigma  = sd of normal distribution (1 default)
#   seed   = seed of randomization ("null" = random default)
#
# Outputs a List:
#    RandomSample = Generated random sample
#    SampleMean   = The mean of the random sample
#    SampleSD     = The sd of the random sample

PlotRandomNormals <- function(numpts=50, bins=10,
                              mu=0, sigma=1,
                              seed=NULL) { #does it with 50 by default
  set.seed(seed)
  rand_sample <- rnorm(numpts, mean=mu, sd=sigma)
  hist(rnorm(numpts), breaks = bins+1)
  abline(v = mean(rand_sample), col="blue")
  list(RandomSample = rand_sample,          # Last line is output, can be list, vector, single value etc
       SampleMean = mean(rand_sample),
       SampleSD = sd(rand_sample))
}
#see defaults
PlotRandomNormals()

PlotRandomNormals(numpts=30)

PlotRandomNormals(numpts = 1000, bins = 200) # overrides defaults

PlotRandomNormals(numpts = 1000, bins = 50, mu=63.5, sigma=4.5)

