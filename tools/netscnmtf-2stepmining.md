---
title: "Multi-Omics Integration of scRNA-seq Time Series Data Predicts New Intervention Points for Parkinson's Disease"
---

<h1 style="text-align: center;">Multi-Omics Integration of scRNA-seq Time Series Data Predicts New Intervention Points for Parkinson's Disease</h1>

<p style="text-align: center;"><b>Katarina Mihajlović, Gaia Ceddia, Noël Malod-Dognin, Gabriela Novak, Dimitrios Kyriakis, Alexander Skupin and Nataša Pržulj</b></p>

<p style="text-align: center;">Corresponding author: Prof. N. Pržulj, <a href="mailto:natasa.przulj@mbzuai.ac.ae">natasa.przulj@mbzuai.ac.ae</a></p>


This repository presents the work on Parkinson's disease (PD) that includes:
 
1. **NetSC-NMTF**: an NMTF-based integration model that fuses four molecular interaction networks (protein-protein interaction (PPI), gene co-expression (COEX), metabolic interaction (MI), and genetic interaction (GI) networks) with a scRNA-seq dataset of a PD or control cell line at a specific time point (i.e., cell condition) to obtain gene embedding spaces of individual cell conditions;
2. a 2-step procedure that mines gene embedding spaces of the cell conditions obtained with NetSC-NMTF to identify PD-related gene predictions;
3. methods for analyzing the PD-relevance of the gene predictions.

## Downloads

- [Code, data and results (zip)](https://github.com/przulj-lab/NetSCNMTF-2stepmining/releases/download/v1.0/NetSCNMTF-2stepmining.zip)

## Contents
The archive contains all data, scripts and results related to our recent work.
In particular, you will find:
- the jupyter notebook `MethodologicalFramework_StepbyStep.ipynb` contains the complete pipeline for: integrating molecular interaction networks with individual expression matrices, mining the resulting gene embedding spaces to get PD-related gene predictions, and computational methods for analyzing the PD-relevance of the gene predictions.
- one folder `CommonData` that contains commonly used data in several steps of the pipeline
- folders for each step of the analysis (Step1 - Step11; `auxStep_JustifyClusteringDistanceApproach`) from the jupyter notebook

- one folder `auxStep_Bestk1k2` that contains folders:
  - `step1_ComputeDispersionCoefficient` that contains the code on how to compute the dispersion coefficients for multiple combinations of cluster numbers (k<sub>1</sub> and k<sub>2</sub>) for individual cell conditions, and the corresponding results (as zip files)
  - `step2_IdentifyBestk1k2` that contains the code which visualizes 
the dispersion coefficients of different k<sub>1</sub> and k<sub>2</sub> values, allowing us to choose k<sub>1</sub> and k<sub>2</sub> that lead to high dispersion coefficients

- one folder `auxStep_AdditionalExperiments` that contains scripts for performing robustness analyses and additional validation experiments
     
**Note:**
- Scripts containing "slurm" in their title are designed to run on a system that supports such batch processing.


## How to run the notebook

Download and unzip the archive above, then, from the unzipped folder:

```bash
pip install -r requirements.txt
```

Execute the jupyter notebook `MethodologicalFramework_StepbyStep.ipynb` 

Note that Windows users need to have bash on their system.

## Citation

K. Mihajlović, G. Ceddia, N. Malod-Dognin, G. Novak, D. Kyriakis, A. Skupin and N. Pržulj. Multi-omics integration of scRNA-seq time series data predicts new intervention points for Parkinson's disease. *Scientific Reports* 14, 10983 (2024). [https://doi.org/10.1038/s41598-024-61844-3](https://doi.org/10.1038/s41598-024-61844-3)
