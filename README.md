# Heteroscedastic Gaussian Process Regression

The Heteroscedastic Gaussian Process Regression Algorithm (HGPR) implementation is based on the paper
["Most Likely Heteroscedastic Gaussian Process Regression"](http://people.csail.mit.edu/kersting/papers/kersting07icml_mlHetGP.pdf) by
Kristian Kersting, Christian Plagemann, Patrick Pfaff and Wolfram Burgard.

Unlike homoscedastic algorithm the HGPR fits both target function and noise, which depends on the arguments.
The implementation of the HGPR is given in the `hgpr.py` file. It employs the modified version of the Gaussian Process Regressior
from the [sckit-learn](https://scikit-learn.org) library, see `gpr_custom.py`. In the modified algorithm parameter `alpha` is fitted during the training.

The example of HGPR usage is given in the `demo.ipynb` file.

One can run the demo code `demo.ipynb` following one of two ways:

1) Run the `demo.ipynb` in the jupyter server in the Docker container. 
First build the Docker image 

```docker build -f Dockerfile -t hgpr .``` 

Next, run the Docker container forwarding the port 8888 of the container to 8888 port on the host 

```docker run --rm -p 8888:8888 hgpr jupyter notebook --allow-root --ip 0.0.0.0 --no-browser```

Now, the `demo.ipynb` is available via the url `http://localhost:8888/`.

2) Run the `demo.ipynb` using the environment in the `env.yml` as kernel for jupyter. Create conda environment with command 

```conda env create -f env.yml```

 Python 3.7 or newer is required.
