---
title: "Network Neighbors of Viral Targets and Differentially Expressed Genes in COVID-19 are Drug Target Candidates"
---

<h1 style="text-align: center;">Network Neighbors of Viral Targets and Differentially Expressed Genes in COVID-19 are Drug Target Candidates</h1>

<p style="text-align: center;"><b>Carme Zambrana, Alexandros Xenos, René Böttcher, Noël Malod-Dognin and Nataša Pržulj</b></p>

<p style="text-align: center;">Corresponding author: Prof. N. Pržulj, <a href="mailto:natasa.przulj@mbzuai.ac.ae">natasa.przulj@mbzuai.ac.ae</a></p>

<div style="text-align: center;">
{% include button.html type="github" link="https://github.com/przulj-lab/sweet-spot-for-therapeutic-intervention-for-covid-19" text="GitHub" %}
</div>

This repository contains the Python scripts for the paper "Network neighbors of viral targets and differentially expressed genes in COVID-19 are drug target candidates" (preprint title: "Between viral targets and differentially expressed genes in COVID-19: the sweet spot for therapeutic intervention").

In this work, we adapt our GNMTF-based data fusion framework to predict candidate target genes and existing drugs that could be re-purposed for treating COVID-19. Moreover, we investigate within the human interactome the interplay between the human proteins that are directly targeted by the SARS-CoV-2 proteins and those genes that are differentially expressed after COVID-19 infection. Our study reveals that the host proteins targeted by viral proteins and the differentially expressed genes are indirectly connected by their neighbors (we termed common neighbor genes). Furthermore, we find that the common neighbors are enriched in various viral processes and hence, might be key to the infection mechanisms used by the virus. By focusing on the predicted drug-target interactions involving FDA-approved drugs and targeting the common neighbor genes, we utilize our integrative framework to predict novel drug-target interactions for genes related to the disease-affected pathways. In particular, we find NO and VEGF signaling as potential molecular pathways whose functions are very similar with several observed COVID-19 symptoms.

## Downloads

- [Code](https://github.com/przulj-lab/sweet-spot-for-therapeutic-intervention-for-covid-19)
- [Data](https://github.com/przulj-lab/sweet-spot-for-therapeutic-intervention-for-covid-19/releases/download/v1.0/Data.zip)

Download and unzip the data in the repository folder, so that the notebooks find the `Data` folder.

## Workflow

The steps of the analysis and the notebooks with the corresponding code:

<img style="display: block; margin: 0 auto;" src="https://raw.githubusercontent.com/przulj-lab/sweet-spot-for-therapeutic-intervention-for-covid-19/main/images/Workflow.png" width="800">

## Notebooks

The execution of all the scripts is detailed in the following notebooks:

- **Executing data fusion framework - Parametrization Tunning**: creates/loads the matrices and executes the data fusion framework with different parametrizations, using Random Acol to initialize the matrices.
- **Executing data fusion framework - Parametrization Tunning - Dispersion Coefficient**: computes the dispersion coefficient after running the data fusion with the different parameters.
- **Executing data fusion framework**: creates/loads the matrices and executes the data fusion framework with SVD initialization, after choosing the parameters.
- **Enrichment Analysis of the Clusters of Genes and Drugs - MIN and PPI**: computes the clusters from the cluster indicators and performs the enrichment analysis of those clusters.
- **Matrix Completion Property of the DTI matrix - Choosing the threshold - PR and ROC - MIN and PPI**: reconstructs the DTI matrix through the matrix completion property, computes the PR and ROC curves, and chooses the threshold to obtain the new predicted DTIs.
- **Matrix Completion Property of the DTI matrix - Cross-Validation - MIN and PPI**: runs the cross-validation experiment to validate the predictive power of the method.
- **Topological Analysis Network**: identifies the different gene sets, computes the overlap between VI neighbors and DEG neighbors, and computes the network centralities and the GDVs for the different gene sets.
- **Enrichment Analysis Gene Sets in MIN**: computes the enrichment analysis of the different gene sets in the MIN and of the 49 common neighbors targeted in the "common neighbors DTIs", using g:Profiler.
- **Comparison constituent networks (PPI, GI MI) with MIN**: compares the genes and edges of the constituent networks with the MIN networks and computes the GDVs for all the networks.

## Requirements

```
numpy==1.17.3
pandas==0.25.3
scipy==1.3.2
scikit-learn==0.21.3
matplotlib==3.1.2
matplotlib-venn==0.11.5
seaborn==0.11.0
statannot==0.2.3
networkx==2.4
statsmodels==0.10.2
gprofiler-official==1.0.0
rdkit
```

## Citation

C. Zambrana, A. Xenos, R. Böttcher, N. Malod-Dognin and N. Pržulj. Network neighbors of viral targets and differentially expressed genes in COVID-19 are drug target candidates. *Scientific Reports* 11, 18985 (2021). [PMID: 34556735](https://pubmed.ncbi.nlm.nih.gov/34556735/)
