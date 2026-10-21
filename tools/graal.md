---
title: "GRAAL (GRAph ALigner) Algorithm"
---

# GRAAL (GRAph ALigner) Algorithm
<div align="center" markdown="1">


**Supplementary information for "Topological network alignment uncovers biological function and phylogeny"**

**Oleksii Kuchaiev\*, Tijana Milenković\*, Vesna Memišević, Wayne Hayes and Nataša Pržulj**

<sub>\* These authors contributed equally to this work</sub>

Corresponding author: Prof. N. Pržulj, natasa.przulj@mbzuai.ac.ae

<img src="https://raw.githubusercontent.com/przulj-lab/GRAAL/main/images/largest_component.jpg" width="400">

</div>

## Downloads

- [Download GRAAL](https://github.com/przulj-lab/GRAAL/releases/download/v1.0/CodeAndTestData.zip)
- [Supplementary information](https://github.com/przulj-lab/GRAAL/releases/download/v1.0/ALL_SI.zip): Supplementary Information and Supplementary Tables 1–8, as one zip file

## How to run GRAAL

- GRAAL has been tested on Gentoo and Mandriva Linux, but should work on other distributions.
- Download and unpack GRAAL using the link above.
- GRAAL accepts networks in LEDA `.gw` format.
- You need Python installed.
- Run `./GRAALRunner.py` without parameters to see usage directions.
- The number of nodes in the first network must not be greater than the number of nodes in the second network.

## Example

In the folder where you unpacked GRAAL:
```bash
./GRAALRunner.py 0.8 testGraph1.gw testGraph2.gw result
```

## Converting an edge list to `.gw`

If your network is an edge list:
```
node1 node2
node3 node4
...
```
convert it with the `list2leda` script included in the GRAAL download:
```bash
./list2leda edgelist.txt >> graph.gw
```
Self-loops, edge directions and duplicate edges are ignored.

## Citation

O. Kuchaiev, T. Milenković, V. Memišević, W. Hayes and N. Pržulj. Topological network alignment uncovers biological function and phylogeny. *Journal of the Royal Society Interface* 7(50), 1341–1354 (2010). https://doi.org/10.1098/rsif.2010.0063
