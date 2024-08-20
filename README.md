# Proven40 mode-of-action paper: Analysis Code
[![https://doi.org/10.5281/zenodo.13350531](https://zenodo.org/badge/DOI/10.5281/zenodo.13350531.svg)](https://doi.org/10.5281/zenodo.13350531)


This repo contains the code used for the analyses that support findings of the paper entitled: "Genetic remodeling of soil diazotrophs enables partial replacement of synthetic nitrogen fertilizer with biological nitrogen fixation in maize"

## Environment set up

To run the code, you will need to recreate the analysis environment using the `environment.yml` file provided. To do this you will need to have `conda` installed. For detail instructions on how to install, visit the [conda website](https://conda.io/projects/conda/en/latest/user-guide/install/index.html). 

Once conda is installed, the environment can be configured using:

`conda env create -f environment.yml`

Now activate the environment. 

`conda activate moa_paper`

## Running the analysis

The analysis is organized in three main sections. Each section includes datasets, analysis notebooks and output figures or tables:

 - `1_LAB_ASSAYS` includes analysis of in-vitro and in-planta assays
 - `2_FIELD_TRIALS` includes analysis of d15N natural abundance and 15N enrichment-dilution field experiments, as well as N fertilizer response trials at Purdue University.
 - `3_ONFARM_TRIALS` includes analysis of plant N status and grain yields from the on-farm field trials 

 Within each folder, specific analyses are contained in the jupyter notebooks (`.ipynb`). These have been exported as `.html` for preview. If you want to run the code, you will need to launch `jupyter`. We recommend [VS Code's jupyter notebooks integration](https://code.visualstudio.com/docs/datascience/jupyter-notebooks) for ease of use. Notebooks are sequentially numbered according to the order they are meant to be run.

 For any questions, please contact Rafael Martinez-Feria ([rmartinez-feria@pivotbio.com](mailto:rmartinez-feria@pivotbio.com))

 

<img src="https://mirrors.creativecommons.org/presskit/buttons/88x31/png/by-nc-sa.png" width="100"/>

