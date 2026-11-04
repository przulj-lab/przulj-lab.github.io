---
title: "Linear Functional Organization of the Omic Embedding Space"
---

<h1 style="text-align: center;">Linear Functional Organization of the Omic Embedding Space</h1>

<p style="text-align: center;"><b>Alexandros Xenos, Noël Malod-Dognin, Stevan Milinković and Nataša Pržulj</b></p>

<p style="text-align: center;">Corresponding author: Prof. N. Pržulj, <a href="mailto:natasa.przulj@mbzuai.ac.ae">natasa.przulj@mbzuai.ac.ae</a></p>

<div style="text-align: center;">
{% include button.html type="github" link="przulj-lab/embedded-omics-data-geometry" text="GitHub" %}
</div>

This repository contains the Python scripts and datasets for the paper "Linear functional organization of the omic embedding space" (preprint title: "Embedded omics data geometry untangles biological complexity").

## Downloads

- [Code and datasets](https://github.com/przulj-lab/embedded-omics-data-geometry)

## Usage

Run the commands from the project directory.

**1. Compute the GDV similarities** of the nodes of the *Homo sapiens* network:
```bash
python gdv_sim.py
```

**2. Generate the embedding** of the *Homo sapiens* network (after step 1):
```bash
python main_embeddings.py <matrix> <factorization>
```
- `matrix`: the type of matrix: `ADJ`, `PPMI`, `GDV` or `GDV PPMI`
- `factorization`: the factorization technique: `SVD` or `NMTF`

## Citation

A. Xenos, N. Malod-Dognin, S. Milinković and N. Pržulj. Linear functional organization of the omic embedding space. *Bioinformatics* 37(21), 3839–3847 (2021). [PMID: 34213534](https://pubmed.ncbi.nlm.nih.gov/34213534/)
