---
---
## **Integrative Computational Network Biology Lab** is a leading research group in computational biology and network science applied to multi-omics precision medicine and therapeutics.

{% include section.html %}

<h2 style="text-align: center;">Our research pillars</h2>

{% capture text %}

We develop novel network science methods and graphlet-based algorithms to analyze multi-omics networks at multiple scales. By utilizing local network topology, we correct for information missed by traditional random walks and enable embedding of multi-omics data into more linearly separable spaces. This allows for explainable and sustainable mining of complex biological networks to understand the molecular organization of life and disease.

{% endcapture %}

{%
  include feature.html
  image="images/Iconbi/7.png"
  title="Multi-Omics Network Analysis"
  text=text
%}

{% capture text %}

We develop versatile artificial intelligence frameworks for multi-omics data fusion, based on graph-regularized non-negative matrix tri-factorization (NMTF) and machine learning techniques. Our methods enable dimensionality reduction, inference, and co-clustering of heterogeneous datasets to better stratify patients into risk groups, discover new biomarkers and therapeutic targets, and re-purpose existing or discover new drugs for personalized medical treatment.


{% endcapture %}

{%
  include feature.html
  image="images/Iconbi/8.png"
  title="AI for Multi-Omics Data Fusion"
  flip=true
  style="bare"
  text=text
%}

{% capture text %}

We apply our computational frameworks to address key challenges in precision medicine across diverse diseases. From time-series and patient-derived single-cell data, we develop consumer-facing precision medicine solutions for cancer, infectious diseases (including Covid-19 and antibiotic resistance), neurodegenerative disorders (Parkinson's), and longevity research. Our goal is to translate multi-omics insights into actionable therapeutic discoveries, including novel antibiotics and drug repurposing strategies, that improve patient outcomes.

{% endcapture %}

{%
  include feature.html
  image="images/Iconbi/9.png"
  title="Precision Therapeutics Discovery"
  text=text
%}
<div style="text-align: center; margin-top: 3rem;">
  <a href="publications" class="button">Explore Our Research</a>
  <a href="tools" class="button">Access Our Tools</a>
</div>

{% include section.html %}

<!-- Team Carousel Section -->
<h2 style="text-align: center; margin-bottom: 30px;">Meet our Team</h2>

<div class="team-carousel">
  <div class="carousel-container">
    <div class="carousel-track" id="teamCarousel">
      <div class="carousel-member">
        <img src="{{ 'images/team/natasa-przulj.jpeg' | relative_url }}" class="carousel-photo" alt="Nataša Pržulj">
        <h4 style="text-align: center">Natasa Przulj</h4>
        <p style="text-align: center">Professor & Lab Leader</p>
      </div>
      <div class="carousel-member">
        <img src="{{ 'images/team/noel-malod.jpeg' | relative_url }}" class="carousel-photo" alt="Noël Malod-Dognin">
        <h4 style="text-align: center">Noel Malod-Dognin</h4>
        <p style="text-align: center">Research Scientist</p>
      </div>
      <div class="carousel-member">
        <img src="{{ 'images/team/stevan-milinkovic.jpg' | relative_url }}" class="carousel-photo" alt="Stevan Milinković">
        <h4 style="text-align: center">Stevan Milinkovic</h4>
        <p style="text-align: center">Research Scientist</p>
      </div>
      <div class="carousel-member">
        <img src="{{ 'images/team/tarmo-nurmi.jpeg' | relative_url }}" class="carousel-photo" alt="Tarmo Nurmi">
        <h4 style="text-align: center">Tarmo Nurmi</h4>
        <p style="text-align: center">Postdoctoral Associate</p>
      </div>
      <div class="carousel-member">
        <img src="{{ 'images/team/aleksandr-matsun.jpeg' | relative_url }}" class="carousel-photo" alt="Aleksandr Matsun">
        <h4 style="text-align: center">Aleksandr Matsun</h4>
        <p style="text-align: center">Research Engineer</p>
      </div>
      <div class="carousel-member">
        <img src="{{ 'images/team/branislava-jankovic.jpeg' | relative_url }}" class="carousel-photo" alt="Branislava Janković">
        <h4 style="text-align: center">Branislava Jankovic</h4>
        <p style="text-align: center">PhD Student</p>
      </div>
    </div>
  </div>
  
  <div style="text-align: center; margin-top: 30px;">
    {%
      include button.html
      link="join"
      text="Join our Team"
      icon="fa-solid fa-arrow-right"
      flip=true
    %}
  </div>
</div>

<style>
  /* Team Carousel Styles */
  .team-carousel {
    max-width: 1200px;
    margin: 60px auto;
    text-align: center;
  }

  .carousel-container {
    position: relative;
    overflow: hidden;
    margin-top: 30px;
  }

  .carousel-track {
    display: flex;
    transition: transform 0.5s ease;
  }

  .carousel-member {
    min-width: 300px;
    padding: 20px;
    text-align: center;
    flex-shrink: 0;
  }

  .carousel-photo {
    width: 150px;
    height: 150px;
    border-radius: 50%;
    object-fit: cover;
    margin: 0 auto 15px;
    border: 1px solid var(--light-gray:); */
    /* box-shadow: 0 4px 8px 0 var(--overlay); */
  }

  .carousel-member h4 {
    margin: 10px 0 5px;
  }

  .carousel-member p {
    margin: 0;
  }

  /* Mobile Responsive */
  @media (max-width: 768px) {
    .carousel-member {
      min-width: 100%;
    }
    
    .carousel-photo {
      width: 140px;
      height: 140px;
    }
  }
</style>

<script>
let currentIndex = 0;
const carousel = document.getElementById('teamCarousel');
const members = carousel.children.length;

function getVisibleMembers() {
  if (window.innerWidth <= 768) {
    return 1;  // 1 member on mobile
  }
  return 3;  // 3 members on desktop
}

function rotateCarousel() {
  const visibleMembers = getVisibleMembers();
  currentIndex = (currentIndex + 1) % (members - visibleMembers + 1);
  
  const memberWidth = window.innerWidth <= 768 ? carousel.offsetWidth : 300;
  const offset = -currentIndex * memberWidth;
  carousel.style.transform = `translateX(${offset}px)`;
}

// Auto-rotate every 3 seconds
setInterval(rotateCarousel, 3000);

// Recalculate on window resize
let resizeTimer;
window.addEventListener('resize', function() {
  clearTimeout(resizeTimer);
  resizeTimer = setTimeout(function() {
    currentIndex = 0;
    carousel.style.transform = 'translateX(0)';
  }, 250);
});
</script>

<h2 style="text-align: center;">
  {% include icon.html icon="fa-solid fa-newspaper" %}
  Lab latest news
</h2>

{% capture col1 %}

  {% assign sorted_news = site.data.news | sort: "date" | reverse %}
    {% for post in sorted_news limit:3 %}
    
  <div class="news-card">
    <div class="news-header">
        <span class="news-title">{{ post.title }}</span>
        <span class="news-date">{% include icon.html icon="fa-regular fa-calendar" %} {{ post.date | date: "%B %d, %Y" }} </span>
    </div>
    <div class="news-description">
        {{ post.description }} 
            {% if post.url %}
            <a href="{{ post.url }}" target="_blank">More...</a>
            {% endif %}
    </div>
  </div>

    {% endfor %}  
  
{%
  include button.html
  link="news"
  text="Read all news"
  icon="fa-solid fa-arrow-right"
  flip=true
  align=left

%}

{% endcapture %}


{% include cols.html col1=col1 %}