---
title: "MONFIT: Multi-Omics Factorization-Based Integration of Time-Series Data Sheds Light on Parkinson's Disease"
---

<h1 style="text-align: center;">MONFIT: Multi-Omics Factorization-Based Integration of Time-Series Data Sheds Light on Parkinson's Disease</h1>

<p style="text-align: center;"><b>Katarina Mihajlović, Noël Malod-Dognin, Corrado Ameli, Alexander Skupin and Nataša Pržulj</b></p>

<p style="text-align: center;">Corresponding author: Prof. N. Pržulj, <a href="mailto:natasa.przulj@mbzuai.ac.ae">natasa.przulj@mbzuai.ac.ae</a></p>

<div style="text-align: center;">
{% include button.html type="github" link="przulj-lab/MONFIT" text="GitHub" %}
</div>

**MONFIT** (Multi-Omics Non-negative matrix tri-Factorization Integration of Time-series) uses NMTF to integrate multi-omics time-point-specific data of scRNA-seq, bulk proteomics, and bulk metabolomics measurements of disease and control samples from a time-series experiment with prior knowledge from molecular interaction networks in terms of PPI, metabolic-interaction (MI), genetic interaction (GI), and COEX, producing gene embeddings. Then, MONFIT holistically mines these embeddings across all time points to identify new disease-associated genes, by applying a new downstream method based on the concept introduced in [Mihajlović et al.](/tools/netscnmtf-2stepmining), which states that those genes whose position changes the most between disease and control samples across all time points are disease-related.

## Downloads

- [Code](https://github.com/przulj-lab/MONFIT)
- [Code, data and results (zip)](https://github.com/przulj-lab/MONFIT/releases/download/v1.0/MONFIT.zip)

## Contents

The archive contains all data, scripts and results related to our work. The Jupyter notebook `Tutorial.ipynb` contains the complete MONFIT pipeline and computational methods for analyzing the gene predictions.

## How to run the notebook

Download and unzip the archive above, then, from the unzipped folder:

```bash
pip install -r requirements.txt
```

Execute the Jupyter notebook `Tutorial.ipynb`.

## Additional information

<details markdown="1">
<summary><b>Data/MolecularNetworks</b></summary>

- **PPI network:** download `BIOGRID-ALL-4.4.218.tab3.zip` from BioGRID and unpack it in the `input` directory. Then, run `ConstructPPI.py`.
- **GI network:** download `BIOGRID-ALL-4.4.218.tab3.zip` from BioGRID and unpack it in the `input` directory. Then, run `ConstructGI.py`.
- **COEX network:** download `Hsa-u.v22-05.G16651-S245698.combat_pca.subagging.z.d.zip` from COXPRESdb and unpack it in the `input/Hsa-u.v22-05.G16651-S245698.combat_pca.subagging.z.d` directory. Then, run `ConstructCOEX.py`.
- **MI network** (in `step1_CreateNetworks`): download information on enzymes from KEGG using `ParseKEGG_enzymeData.sh`. We provide the list of human enzymes we downloaded from KEGG on 06.03.2023. Then, run `MI_Enzymes2Metabolites2Genes.py` to obtain the file connecting enzymes, metabolites and genes.

Note: to run the `.sh` script on Windows, you need an environment that can interpret and execute the script (e.g., Git Bash). If using Git Bash, make sure that the `wget` utility is installed on the system.

In the `output` directory, we provide the PPI, GI, and COEX networks used in our study and the KEGG data used for constructing the data-specific MI networks.

</details>

<details markdown="1">
<summary><b>Data/parsingDrugBank</b></summary>

Download the `drugbank_all_full_database.xml` file from go.drugbank.com (version 5.1.10, released on 2023-01-04).

</details>

<details markdown="1">
<summary><b>Data/ParsingGeneAnnotDBs</b></summary>

- `gene2go.gz`, downloaded from [https://ftp.ncbi.nlm.nih.gov/gene/DATA/](https://ftp.ncbi.nlm.nih.gov/gene/DATA/)
- `NCBI2Reactome_All_Levels.txt`, `ReactomePathways.txt` and `ReactomePathwaysRelation.txt`, downloaded from [https://reactome.org/download/current/](https://reactome.org/download/current/)
- `KEGG_PathwaysList.txt` and `KEGG_Pathway2Gene.txt`, downloaded using `ParseKEGG.sh`
- `go-basic.obo`, downloaded from [http://geneontology.org/docs/download-ontology/](http://geneontology.org/docs/download-ontology/)

All files were downloaded on 21.03.2023.

</details>

<details markdown="1">
<summary><b>Data/PD_Multiomics_ND_cellline/Transcriptomics</b></summary>

- **WT** denotes Wild Type, i.e., control samples.
- **ND** denotes samples of a PD cell line harbouring a PINK1 mutation.

</details>

<details markdown="1">
<summary><b>step2_NMTF_WeightedNets</b></summary>

To ensure reproducibility, we provide the matrix factors that step 1 of MONFIT produces (`output`). Running NMTF on different systems may result in slight numerical differences.

</details>

<details markdown="1">
<summary><b>step3_ClusterG1NMTF_WeightedNets</b></summary>

To ensure reproducibility, we provide the k-means clusters, because the k-means clustering algorithm is non-deterministic.

</details>

<details markdown="1">
<summary><b>stepAUX_NoBulk_2stepDownstream</b></summary>

We provide scripts for comparing the results obtained with MONFIT on scRNA-seq, bulk proteomics, and bulk metabolomics measurements of disease and control samples from a Parkinson's disease time-series experiment with prior knowledge from molecular interaction networks against:

- the predictions obtained by the downstream analysis approach that inspired MONFIT's pipeline, presented in [Mihajlović et al.](/tools/netscnmtf-2stepmining);
- the predictions obtained by not including bulk metabolomics and proteomics data during MONFIT integration (`NoBulk` directory). Here, we also provide the matrix factors that step 1 of MONFIT produces.

</details>

<details markdown="1">
<summary><b>stepAUX_RobustnessAnalysis_k1k2 and stepAUX_RobustnessAnalysis_Weights</b></summary>

We provide scripts for assessing the robustness of MONFIT to i) the number of dimensions and ii) different combinations of weighting factors of the input matrices used for producing the lower-dimensional matrices with step 1 of MONFIT.

</details>

## Citation

K. Mihajlović, N. Malod-Dognin, C. Ameli, A. Skupin and N. Pržulj. MONFIT: multi-omics factorization-based integration of time-series data sheds light on Parkinson's disease. *NAR Molecular Medicine* 1(4), ugae012 (2024). [https://doi.org/10.1093/narmme/ugae012](https://doi.org/10.1093/narmme/ugae012)
