---
title: Contact
nav:
  order: 6
  tooltip: Email, address, and location
---

# {% include icon.html icon="fa-regular fa-envelope" %}Contact

**Integrative Computational Network Biology (ICON)** Lab is located at the Computational Biology Department at the [Mohamed bin Zayed University of Artificial Intelligence (MBZUAI)](https://mbzuai.ac.ae/), Masdar City, Abu Dhabi, UAE. We are based in the first floor of Building 1B at MBZUAI campus.

If you're interested to join the team, please check the open positions and other opportunities [here](/join).

{%
  include button.html
  type="email"
  text="natasa.przulj@mbzuai.ac.ae"
  link="natasa.przulj@mbzuai.ac.ae"
%}

{%
  include button.html
  type="address"
  tooltip="Our location on Google Maps for easy navigation"
  link="https://maps.app.goo.gl/PE5hPbBgajcbfkfn6"
%}

{% include section.html %}

{% capture col1 %}

{%
  include figure.html
  image="images/mbzuai1b.jpg"
  caption="Building 1B, MBZUAI campus"
%}

{% endcapture %}

{% capture col2 %}

{%
  include figure.html
  image="images/team.jpeg"
  caption="Computational Biology Lab space, MBZUAI"
%}

{% endcapture %}

{% include cols.html col1=col1 col2=col2 %}

<style>
  /* Force image cropping - use !important to override template */
  figure {
    max-width: 400px !important;
    margin: 0 auto !important;
  }
  
  figure img {
    width: 100% !important;
    height: 300px !important;
    object-fit: cover !important;
    object-position: center !important;
    border-radius: 8px !important;
    box-shadow: 0 4px 8px rgba(0,0,0,0.15) !important;
  }
  
  figcaption {
    text-align: center !important;
    font-style: italic !important;
    margin-top: 10px !important;
    font-size: 0.95em !important;
  }
</style>

{% include section.html%}