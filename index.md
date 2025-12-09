---
---
## **Integrative Computational Network Biology Lab** is a leading research group in computational biology and network science applied to multi-omics precision medicine and therapeutics.

{% include section.html %}

<h2 style="text-align: center;">Our vision and mission</h2>

{% capture text %}

Our mission is to transform healthcare through cutting-edge computational network science that integrates multi-omics data for precision medicine. We develop AI-driven tools to decode disease mechanisms, predict drug responses, and discover therapeutic targets, bridging computational innovation with clinical application to improve human health globally.

{%
  include button.html
  link="publications"
  text="Explore our latest research"
  icon="fa-solid fa-arrow-right"
  flip=true
%}

{% endcapture %}

{%
  include feature.html
  image="images/home/mbzuai_2.jpg"
  link="publications"
  title="Advancing Precision Medicine, Transforming Healthcare"
  text=text
%}


{% capture text %}

We strongly believe in global access to open and reproducible science. Our tools, software, and resources are openly licensed and freely available for all to use and build upon. By fostering a culture of collaboration and transparency, we aim to accelerate scientific discovery and innovation that benefit all.

{%
  include button.html
  link="tools"
  text="Access our open-source tools"
  icon="fa-solid fa-arrow-right"
  flip=true
%}

{% endcapture %}

{%
  include feature.html
  image="images/home/open-infrastructure.jpeg"
  link="tools"
  title="Open science and reproducibility is our foundation"
  flip=true
  style="bare"
  text=text
%}

<style>
  /* Hide second and third feature images */
  .feature:nth-of-type(2) .feature-image,
  .feature:nth-of-type(1) .feature-image {
    display: none;
  }
  
  .feature:nth-of-type(2) .feature-text,
  .feature:nth-of-type(1) .feature-text {
    grid-column: 1 / -1;
    max-width: 800px;
    margin: 0 auto;
    text-align: center;
  }
</style>

{% include section.html 
  background="images/ug-banner-img.jpg"
  dark=true
%}

<div style="max-width: 800px; margin: 0 auto; text-align: center; padding: 80px 20px;">
  <h2 style="color: white; font-size: 2.5em; margin-bottom: 20px; text-align: center;">
    Training the next generation of scientists
  </h2>
  
  <p style="color: white; font-size: 1.2em; line-height: 1.8; margin-bottom: 30px;">
    We are training and building a collaborative team of responsible researchers united by a shared vision. We are committed to create an inclusive environment and recognize that diversity — in people, ideas, and data — is essential for scientific creativity and discovery.
  </p>
  
  {%
    include button.html
    link="join"
    text="Be part of the team"
    icon="fa-solid fa-arrow-right"
    flip=true
  %}
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
      link="team"
      text="View Full Team"
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