---
title: Tools
nav:
  order: 2
  tooltip: Software, datasets, and more
---

# {% include icon.html icon="fa-solid fa-wrench" %}Open Source Tools and Resources

Our lab develops cutting-edge computational tools for network biology, graphlet analysis, and multi-omics integration. All our tools are openly licensed and freely available.

{% include section.html %}

## Network Analysis

{% for tool in site.data.tools %}
{% if tool.tags contains "network-analysis" %}
{% include card.html 
  title=tool.title
  subtitle=tool.subtitle
  image="images/fallback2.svg"
  link=tool.link
  description=tool.description
  tags=tool.tags
  repo=tool.repo
%}
{% endif %}
{% endfor %}

{% include section.html %}

## Alignment-free Network Comparison

{% for tool in site.data.tools %}
{% if tool.tags contains "alignment-free" %}
{% include card.html 
  title=tool.title
  subtitle=tool.subtitle
  image="images/fallback2.svg"
  link=tool.link
  description=tool.description
  tags=tool.tags
  repo=tool.repo
%}
{% endif %}
{% endfor %}

{% include section.html %}

## Network Aligners

{% for tool in site.data.tools %}
{% if tool.tags contains "network-aligners" %}
{% include card.html 
  title=tool.title
  subtitle=tool.subtitle
  image="images/fallback2.svg"
  link=tool.link
  description=tool.description
  tags=tool.tags
  repo=tool.repo
%}
{% endif %}
{% endfor %}

{% include section.html %}

## Protein Structure Comparison

{% for tool in site.data.tools %}
{% if tool.tags contains "protein-structure" %}
{% include card.html 
  title=tool.title
  subtitle=tool.subtitle
  image="images/fallback2.svg"
  link=tool.link
  description=tool.description
  tags=tool.tags
  repo=tool.repo
%}
{% endif %}
{% endfor %}