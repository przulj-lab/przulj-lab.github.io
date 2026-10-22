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
{% capture desc %}{{ tool.description }}{% if tool.repo contains "przulj-lab/" %}

<a href="https://github.com/{{ tool.repo }}" target="_blank" style="display: inline-block; margin-top: 4px; font-size: 0.9em;"><i class="fa-brands fa-github"></i> GitHub</a>{% endif %}{% endcapture %}
{% include card.html 
  title=tool.title
  subtitle=tool.subtitle
  image="images/fallback2.svg"
  link=tool.link
  description=desc
  tags=tool.tags
  repo=tool.repo
%}
{% endif %}
{% endfor %}

{% include section.html %}

## Alignment-free Network Comparison

{% for tool in site.data.tools %}
{% if tool.tags contains "alignment-free" %}
{% capture desc %}{{ tool.description }}{% if tool.repo contains "przulj-lab/" %}

<a href="https://github.com/{{ tool.repo }}" target="_blank" style="display: inline-block; margin-top: 4px; font-size: 0.9em;"><i class="fa-brands fa-github"></i> GitHub</a>{% endif %}{% endcapture %}
{% include card.html 
  title=tool.title
  subtitle=tool.subtitle
  image="images/fallback2.svg"
  link=tool.link
  description=desc
  tags=tool.tags
  repo=tool.repo
%}
{% endif %}
{% endfor %}

{% include section.html %}

## Network Aligners

{% for tool in site.data.tools %}
{% if tool.tags contains "network-aligners" %}
{% capture desc %}{{ tool.description }}{% if tool.repo contains "przulj-lab/" %}

<a href="https://github.com/{{ tool.repo }}" target="_blank" style="display: inline-block; margin-top: 4px; font-size: 0.9em;"><i class="fa-brands fa-github"></i> GitHub</a>{% endif %}{% endcapture %}
{% include card.html 
  title=tool.title
  subtitle=tool.subtitle
  image="images/fallback2.svg"
  link=tool.link
  description=desc
  tags=tool.tags
  repo=tool.repo
%}
{% endif %}
{% endfor %}

{% include section.html %}

## Protein Structure Comparison

{% for tool in site.data.tools %}
{% if tool.tags contains "protein-structure" %}
{% capture desc %}{{ tool.description }}{% if tool.repo contains "przulj-lab/" %}

<a href="https://github.com/{{ tool.repo }}" target="_blank" style="display: inline-block; margin-top: 4px; font-size: 0.9em;"><i class="fa-brands fa-github"></i> GitHub</a>{% endif %}{% endcapture %}
{% include card.html 
  title=tool.title
  subtitle=tool.subtitle
  image="images/fallback2.svg"
  link=tool.link
  description=desc
  tags=tool.tags
  repo=tool.repo
%}
{% endif %}
{% endfor %}
