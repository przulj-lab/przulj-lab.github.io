---
---
## **Integrative Computational Network Biology Lab**, led by Prof. Przulj, is a leading research group in multi-omics data fusion and network science applied to precision medicine and precision therapeutics.

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

We develop versatile artificial intelligence frameworks for multi-omics data fusion, based on graph-regularized non-negative matrix tri-factorization (NMTF) and other machine learning techniques. Our methods enable dimensionality reduction, inference, and co-clustering of heterogeneous datasets to better stratify patients into risk groups, discover new biomarkers and therapeutic targets, and to re-purpose existing and discover new drugs for personalized medical treatment.


{% endcapture %}

{%
  include feature.html
  image="images/Iconbi/8.png"
  title="Multi-omics data fusion AI for precision medicine"
  flip=true
  style="bare"
  text=text
%}

{% capture text %}

We apply our computational frameworks to address key challenges in precision medicine across diverse diseases. From time-series and patient-derived single-cell data and all other multi-omic data, we develop consumer-facing precision medicine solutions for cancer, infectious diseases (including Covid-19 and antimicrobial resistance), neurodegenerative disorders (Parkinson’s), and longevity research. Our goal is to translate multi-omics insights into actionable therapeutic discoveries, including novel antibiotics, anti-cancer and anti-aging compounds, that improve patient outcomes.

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
    <!-- Left Arrow -->
    <button class="carousel-arrow left" onclick="moveCarousel(-1)" aria-label="Previous">
      <i class="fas fa-chevron-left"></i>
    </button>
    
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
        <img src="{{ 'images/team/sam-windels.jpeg' | relative_url }}" class="carousel-photo" alt="Sam F. L. Windels">
        <h4 style="text-align: center">Sam F. L. Windels</h4>
        <p style="text-align: center">Postdoctoral Associate</p>
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
    
    <!-- Right Arrow -->
    <button class="carousel-arrow right" onclick="moveCarousel(1)" aria-label="Next">
      <i class="fas fa-chevron-right"></i>
    </button>
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
    padding: 0 40px;
  }

  .carousel-track {
    display: flex;
    gap: 40px;
    transition: transform 0.5s ease;
  }

  .carousel-member {
    min-width: 280px;
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
  }

  .carousel-member h4 {
    margin: 10px 0 5px;
    color: var(--text);
  }

  .carousel-member p {
    margin: 0;
    color: var(--text);
  }

  /* Simple Arrow Styles */
  .carousel-arrow {
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    background: none;
    border: none;
    color: var(--text);
    font-size: 30px;
    cursor: pointer;
    z-index: 10;
    transition: opacity 0.3s ease;
    opacity: 0.6;
  }

  .carousel-arrow:hover {
    opacity: 1;
  }

  .carousel-arrow.left {
    left: 10px;
  }

  .carousel-arrow.right {
    right: 10px;
  }

  @media (max-width: 768px) {
    .carousel-container {
      padding: 0;
      margin: 0 50px;
    }
    
    .carousel-track {
      gap: 0;
    }
    
    .carousel-member {
      width: 100vw;
      max-width: calc(100vw - 100px);
      min-width: calc(100vw - 100px);
      padding: 20px;
      margin: 0;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
    }
    
    .carousel-photo {
      width: 140px;
      height: 140px;
    }

    .carousel-arrow {
      font-size: 24px;
    }

    .carousel-arrow.left {
      left: -40px;
    }

    .carousel-arrow.right {
      right: -40px;
    }
  }
</style>

<script>
let currentIndex = 0;
const carousel = document.getElementById('teamCarousel');
const members = carousel.children.length;

function getVisibleMembers() {
  if (window.innerWidth <= 768) {
    return 1;
  }
  return 3;
}

function moveCarousel(direction) {
  const visibleMembers = getVisibleMembers();
  const maxIndex = members - visibleMembers;
  
  currentIndex += direction;
  
  if (currentIndex < 0) {
    currentIndex = maxIndex;
  } else if (currentIndex > maxIndex) {
    currentIndex = 0;
  }
  
  updateCarousel();
}

function updateCarousel() {
  if (window.innerWidth <= 768) {
    // Mobile: each member is full viewport width minus arrow space
    const memberWidth = window.innerWidth - 100;
    const offset = -currentIndex * memberWidth;
    carousel.style.transform = `translateX(${offset}px)`;
  } else {
    // Desktop: member width + gap
    const memberWidth = 280;
    const gap = 40;
    const offset = -currentIndex * (memberWidth + gap);
    carousel.style.transform = `translateX(${offset}px)`;
  }
}

let resizeTimer;
window.addEventListener('resize', function() {
  clearTimeout(resizeTimer);
  resizeTimer = setTimeout(function() {
    currentIndex = 0;
    updateCarousel();
  }, 250);
});
</script>

<h2 style="text-align: center;">
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