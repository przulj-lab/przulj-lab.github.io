---
title: "Graphlet Eigencentralities Capture Novel Central Roles of Genes in Pathways"
---

<h1 style="text-align: center;">Graphlet Eigencentralities Capture Novel Central Roles of Genes in Pathways</h1>

<p style="text-align: center;"><b>S. F. L. Windels, N. Malod-Dognin and N. Pržulj</b></p>

<p style="text-align: center;">Corresponding author: Prof. N. Pržulj, <a href="mailto:natasa.przulj@mbzuai.ac.ae">natasa.przulj@mbzuai.ac.ae</a></p>

<div style="text-align: center;">
{% include button.html type="github" link="przulj-lab/graphlet_eigencentrality" text="GitHub" %}
</div>

This repository contains the data for the paper "Graphlet eigencentralities capture novel central roles of genes in pathways".

## Data

All data is available in the [GitHub repository](https://github.com/przulj-lab/graphlet_eigencentrality).

<details markdown="1">
<summary><b>data/annotations/cancer drivers</b></summary>

[Open folder](https://github.com/przulj-lab/graphlet_eigencentrality/tree/main/data/annotations/cancer%20drivers)

The list of cancer drivers used.

</details>

<details markdown="1">
<summary><b>data/annotations/reactome_2_genes</b></summary>

[Open folder](https://github.com/przulj-lab/graphlet_eigencentrality/tree/main/data/annotations/reactome_2_genes)

- Each file in this directory contains the Reactome pathway annotations applicable to a given network. For instance, `data/annotations/reactome_2_genes/PPI_human_Reactome.tsv` assigns the genes in the human PPI network to Reactome pathways.
- Lines are tab-delimited: the first entry is the Reactome pathway identifier, and the rest of the entries are NCBI gene IDs.
- Genes that have no interaction in the network are not included in the annotation file.

</details>

<details markdown="1">
<summary><b>data/networks</b></summary>

[Open folder](https://github.com/przulj-lab/graphlet_eigencentrality/tree/main/data/networks)

- The molecular networks used in the paper, in edge list format.
- Each row is an edge: the two entries are the two interacting genes (NCBI Entrez IDs).

</details>

## Citation

S. F. L. Windels, N. Malod-Dognin and N. Pržulj. Graphlet eigencentralities capture novel central roles of genes in pathways. *PLoS One* 17(1), e0261676 (2022). [PMID: 35077468](https://pubmed.ncbi.nlm.nih.gov/35077468/)
