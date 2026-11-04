---
title: "The Axes of Biology: a Novel Axes-Based Network Embedding Paradigm to Decipher the Functional Mechanisms of the Cell"
---

<h1 style="text-align: center;">The Axes of Biology: a Novel Axes-Based Network Embedding Paradigm to Decipher the Functional Mechanisms of the Cell</h1>

<p style="text-align: center;"><b>S. Doria-Belenguer, A. Xenos, G. Ceddia, N. Malod-Dognin and N. Pržulj</b></p>

<p style="text-align: center;">Corresponding author: Prof. N. Pržulj, <a href="mailto:natasa.przulj@mbzuai.ac.ae">natasa.przulj@mbzuai.ac.ae</a></p>

## Overview

Common approaches for deciphering biological networks involve network embedding algorithms. These approaches strictly focus on clustering the genes' embedding vectors and interpreting such clusters to reveal the hidden information of the networks. However, the difficulty in interpreting the genes' clusters and the limitations of the functional annotations' resources hinder the identification of the currently unknown cell's functioning mechanisms.

We propose a new approach that shifts this functional exploration from the embedding vectors of genes in space to the axes of the space itself. Our methodology better disentangles biological information from the embedding space than the classic gene-centric approach. Moreover, it uncovers new data-driven functional interactions that are unregistered in the functional ontologies, but biologically coherent. Furthermore, we exploit these interactions to define new higher-level annotations that we term Axes-Specific Functional Annotations and validate them through literature curation. Finally, we leverage our methodology to discover evolutionary connections between cellular functions and the evolution of species.

## Downloads

- [Code](https://github.com/przulj-lab/axes-of-biology)
- [Input data (zip)](https://github.com/przulj-lab/axes-of-biology/releases/download/v1.0/Data.zip)

Download and unzip the data in the repository folder.

## Usage

This repository contains all scripts and input data required to replicate the analysis presented in the study. To replicate the results, run:

```bash
python Species_Complete_Main.py
```

## Updates

- 15/05/2024: fixed bugs and incomplete code upload.

## Citation

S. Doria-Belenguer, A. Xenos, G. Ceddia, N. Malod-Dognin and N. Pržulj. The axes of biology: a novel axes-based network embedding paradigm to decipher the functional mechanisms of the cell. *Bioinformatics Advances* 4(1), vbae075 (2024). [PMID: 38827411](https://pubmed.ncbi.nlm.nih.gov/38827411/)
