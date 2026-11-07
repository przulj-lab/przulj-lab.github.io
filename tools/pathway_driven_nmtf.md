---
title: "Identifying Cellular Cancer Mechanisms Through Pathway-Driven Data Integration"
---

<h1 style="text-align: center;">Identifying Cellular Cancer Mechanisms Through Pathway-Driven Data Integration</h1>

<p style="text-align: center;"><b>S. F. L. Windels, N. Malod-Dognin and N. Pržulj</b></p>

<p style="text-align: center;">Corresponding author: Prof. N. Pržulj, <a href="mailto:natasa.przulj@mbzuai.ac.ae">natasa.przulj@mbzuai.ac.ae</a></p>

<div style="text-align: center;">
{% include button.html type="github" link="przulj-lab/pathway_driven_nmtf" text="GitHub" %}
</div>

This repository contains the data and source code for the paper "Identifying cellular cancer mechanisms through pathway-driven data integration".

## Downloads

**Code and data:**
- [Code and data (zip)](https://github.com/przulj-lab/pathway_driven_nmtf/releases/download/v1.0/pathway_driven_nmtf.zip)

**Precomputed graphlet adjacency matrices (all 7 parts are needed):**
- [Part 1](https://github.com/przulj-lab/pathway_driven_nmtf/releases/download/v1.0/adjacency_matrices.7z.001)
- [Part 2](https://github.com/przulj-lab/pathway_driven_nmtf/releases/download/v1.0/adjacency_matrices.7z.002)
- [Part 3](https://github.com/przulj-lab/pathway_driven_nmtf/releases/download/v1.0/adjacency_matrices.7z.003)
- [Part 4](https://github.com/przulj-lab/pathway_driven_nmtf/releases/download/v1.0/adjacency_matrices.7z.004)
- [Part 5](https://github.com/przulj-lab/pathway_driven_nmtf/releases/download/v1.0/adjacency_matrices.7z.005)
- [Part 6](https://github.com/przulj-lab/pathway_driven_nmtf/releases/download/v1.0/adjacency_matrices.7z.006)
- [Part 7](https://github.com/przulj-lab/pathway_driven_nmtf/releases/download/v1.0/adjacency_matrices.7z.007)

Download and unzip `pathway_driven_nmtf.zip`, put all 7 parts in its `data/` folder, then extract them with [7-Zip](https://www.7-zip.org/):

```bash
cd data
7z x adjacency_matrices.7z.001
```

## Installation

To create the same Python environment used to run our scripts:

```bash
python3.7 -m venv ./pnmtf_venv   # create a virtual environment named 'pnmtf_venv'
source ./pnmtf_venv/bin/activate # enter the virtual environment
pip install -r requirements.txt  # install the dependencies
```

## Data

| Data | Description |
|---|---|
| `data/adjacency_matrices.7z.00[1-7]` | Precomputed graphlet adjacency matrices for all networks. To be extracted with 7z (see above). |
| `data/gene_lists/` | Lists of genes for each tissue. The genes are ordered to correspond to the rows/columns in the graphlet adjacency matrices. |
| `data/pathway_2_genes/` | Each row is a pathway identifier followed by the list of gene IDs belonging to that pathway according to Reactome. |
| `embeddings/` | Precomputed pickled `nmtf_embedding` objects (defined in `nmtf.py`), storing the pathway embeddings output by PNMTF. |
| `data/annotations/` | Various gene and pathway annotations used in our cancer analysis (`Analysis.ipynb`). |
| `data/Drug_Groups.csv` | Assigns drugs to groups (e.g., experimental). |
| `data/Drug_Target_Interactions.csv` | Links drugs and known drug targets. |
| `data/immune_system_pathways.txt` | Pathways known to be part of the immune system. |

## Scripts

To run any of these scripts, first activate `pnmtf_venv` (see Installation above), then run them from the project folder.

### run_tasks.py

Runs PNMTF for all four cancers (lung, colon, prostate, ovary) and graphlet adjacencies (graphlets 0–8).

It reads `task_file.csv`. Each line in this file contains the settings for one run of PNMTF (the input files, such as the graphlet adjacency files and pathway-to-gene files, the output directory, etc.). Each run of PNMTF is launched sequentially. The output of PNMTF has already been precomputed in `./embeddings`, so this step can be skipped.

```bash
python run_tasks.py
```

### pathway_scores.py

Computes the pathway scores (NMTF-centrality, moving distance, hybrid score) for all four cancers and graphlet adjacencies.

For each cancer, graphlet adjacency and type of score, it reads the PNMTF embedding (from `./embeddings`), computes the scores of all pathways and stores them in a `.csv` file under `./pathway_scores`. First extract the adjacency matrices (see Downloads above).

```bash
python pathway_scores.py
```

### gene_scores.py

Computes the gene scores (NMTF-centrality, moving distance, hybrid score) for all four cancers and graphlet adjacencies.

For each cancer, graphlet adjacency and type of score, it reads the PNMTF embedding (from `./embeddings`), computes the scores of all genes and stores them in a `.csv` file under `./genes_scores`.

```bash
python gene_scores.py
```

### Analysis.ipynb

The analysis as presented in the paper:

- PNMTF embedding spaces are functionally organised
- applying an elbow method on our pathway scores to identify top scoring pathways
- measuring the accuracy of predicting cancer pathways
- applying an elbow method on our gene scores to identify top scoring genes
- measuring the accuracy of predicting cancer genes
- listing the top scoring genes and pathways predicted to be cancer implicated

To run it, start Jupyter from the project folder, then open `Analysis.ipynb` at the address Jupyter prints in the terminal:

```bash
jupyter notebook
```

## Citation

S. F. L. Windels, N. Malod-Dognin and N. Pržulj. Identifying cellular cancer mechanisms through pathway-driven data integration. *Bioinformatics* 38(18), 4344–4351 (2022). [PMID: 35916710](https://pubmed.ncbi.nlm.nih.gov/35916710/)
