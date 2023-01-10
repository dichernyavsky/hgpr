# Heterscedastic Gaussian Process Regression

The Heterscedastic Gaussian Process Regression Algorithm (HGPR) is based on the paper
["Most Likely Heteroscedastic Gaussian Process Regression"](http://people.csail.mit.edu/kersting/papers/kersting07icml_mlHetGP.pdf) by
Kristian Kersting, Christian Plagemann, Patrick Pfaff and Wolfram Burgard.

Unlike homoscedastic algorithm the HGPR fits both target function and noise, which depends on the arguments.
The implementation of the HGPR is given in the `hgpr.py` file. It employs the modified version of the Gaussian Process Regressior
from the [sckit-learn](https://scikit-learn.org) library, see `gpr_custom.py`. In the modified algorithm parameter `alpha` is fitted during the training.

The example of HGPR usage is given in the `demo.ipynb` file.
