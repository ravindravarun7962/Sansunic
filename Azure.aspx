<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Azure.aspx.cs" Inherits="SANSUNIC.Azure" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* GLOBAL */
body {
    font-family: 'Segoe UI', sans-serif;
    background: #020617;
    margin: 0;
    padding: 0;
}

section {
    padding: 80px 0;
    position: relative;
}

/* HERO */
.hero-section {
    background: linear-gradient(135deg, #0f172a, #1e3a8a, #2563eb);
    color: #fff;
}

.hero-text h1 {
    font-size: 40px;
    font-weight: 700;
    margin-bottom: 15px;
}

.hero-text h2 {
    font-size: 22px;
    color: #60a5fa;
    margin-bottom: 15px;
}

.hero-text p {
    color: #e2e8f0;
    line-height: 1.7;
    margin-bottom: 15px;
}

/* BUTTONS */
.hero-buttons .btn {
    padding: 10px 20px;
    border-radius: 30px;
    margin-right: 10px;
}

/* FLOAT IMAGE */
.hero-img {
    max-width: 100%;
    animation: float 4s ease-in-out infinite;
}

@keyframes float {
    0% { transform: translateY(0); }
    50% { transform: translateY(-15px); }
    100% { transform: translateY(0); }
}

/* SECTION COMMON */
.section-tag {
    color: #38bdf8;
    font-weight: 600;
}

.section-title {
    color: #fff;
    font-size: 32px;
    margin-bottom: 20px;
}

.section-text {
    color: #cbd5e1;
    line-height: 1.6;
}

/* ABOUT */
.who-section {
    background: #020617;
}

.who-img {
    border-radius: 15px;
    box-shadow: 0 10px 30px rgba(0,0,0,0.5);
}

.who-list {
    list-style: none;
    padding: 0;
}

.who-list li {
    margin-bottom: 10px;
    color: #e2e8f0;
}

/* SERVICES */
.services-section {
    background: linear-gradient(135deg, #020617, #0f172a);
}

.service-card {
    background: rgba(255,255,255,0.05);
    padding: 25px;
    border-radius: 15px;
    transition: 0.3s;
    border: 1px solid rgba(255,255,255,0.1);
    backdrop-filter: blur(10px);
}

.service-card:hover {
    transform: translateY(-10px);
    border-color: #3b82f6;
    box-shadow: 0 0 25px rgba(59,130,246,0.3);
}

.service-icon {
    font-size: 30px;
    color: #38bdf8;
    margin-bottom: 15px;
}

.service-card h4 {
    color: #fff;
}

.service-card p {
    color: #cbd5e1;
    font-size: 14px;
}

/* PROCESS */
.process-section {
    background: linear-gradient(135deg, #020617, #0f172a);
}

/* TIMELINE */
.timeline {
    position: relative;
    margin-top: 50px;
}

/* LINE */
.timeline::after {
    content: '';
    position: absolute;
    width: 3px;
    background: #38bdf8;
    top: 0;
    bottom: 0;
    left: 50%;
}

/* ITEM */
.timeline-item {
    width: 50%;
    padding: 20px 40px;
    position: relative;
}

.timeline-item.left {
    left: 0;
}

.timeline-item.right {
    left: 50%;
}

/* DOT */
.timeline-item::before {
    content: '';
    position: absolute;
    top: 25px;
    width: 15px;
    height: 15px;
    background: #38bdf8;
    border-radius: 50%;
    z-index: 1;
}

.timeline-item.left::before {
    right: -8px;
}

.timeline-item.right::before {
    left: -8px;
}

/* CONTENT */
.timeline-item .content {
    background: rgba(255,255,255,0.05);
    padding: 20px;
    border-radius: 12px;
    border: 1px solid rgba(255,255,255,0.1);
    transition: 0.3s;
}

.timeline-item .content:hover {
    transform: translateY(-8px);
    border-color: #38bdf8;
}

/* TEXT */
.timeline-item h4 {
    color: #fff;
}

.timeline-item p {
    color: #cbd5e1;
    font-size: 14px;
}

/* RESPONSIVE */
@media(max-width:768px){

    .timeline::after {
        left: 20px;
    }

    .timeline-item {
        width: 100%;
        padding-left: 60px;
        padding-right: 20px;
    }

    .timeline-item.right {
        left: 0;
    }

    .timeline-item.left::before,
    .timeline-item.right::before {
        left: 12px;
    }

    .hero-text h1 {
        font-size: 28px;
    }
}
        /* FAQ SECTION */
.faq-section {
    padding: 80px 0;
    background: #020617;
}

.faq-container {
    max-width: 800px;
    margin: auto;
}

/* ITEM */
.faq-item {
    background: rgba(255,255,255,0.05);
    margin-bottom: 15px;
    border-radius: 10px;
    overflow: hidden;
    border: 1px solid rgba(255,255,255,0.1);
}

/* QUESTION */
.faq-question {
    width: 100%;
    padding: 18px 20px;
    font-size: 15px;
    font-weight: 600;
    border: none;
    background: transparent;
    color: #fff;
    cursor: pointer;

    display: flex;
    justify-content: space-between;
    align-items: center;
}

/* ICON */
.faq-question .icon {
    font-size: 20px;
    color: #38bdf8;
    transition: 0.3s;
}

/* ANSWER */
.faq-answer {
    max-height: 0;
    overflow: hidden;
    transition: 0.4s ease;
    padding: 0 20px;
}

.faq-answer p {
    padding: 10px 0 20px;
    color: #cbd5e1;
}

/* ACTIVE */
.faq-item.active .faq-answer {
    max-height: 200px;
}

.faq-item.active .icon {
    transform: rotate(45deg); /* + becomes × */
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="hero-section"> 
  <div class="container">
     <div class="row align-items-center">

        <!-- LEFT CONTENT -->
        <div class="col-md-6 hero-text">
           <h1>Microsoft Azure Cloud Solutions</h1>

           <h2>Build Scalable, Secure & Intelligent Cloud Infrastructure</h2>

           <p>
              In today’s fast-evolving digital landscape, businesses need more than just traditional IT systems — 
              they require powerful, scalable, and secure cloud solutions to stay competitive. Microsoft Azure 
              provides a flexible cloud platform that enables organizations to build, deploy, and manage applications 
              across a global network with high performance and reliability.
           </p>

           <p>
              At Sansunic Private Limited, we help businesses transform their operations using Azure cloud services. 
              From seamless cloud migration to AI-powered application development, we design tailored solutions that 
              improve efficiency, reduce costs, and accelerate business growth.
           </p>

           <div class="hero-buttons"> 
              <a class="btn btn-primary">Explore Azure Services</a>
              <a class="btn btn-outline-light">Get Free Consultation</a> 
           </div>
        </div>

        <!-- RIGHT IMAGE -->
        <div class="col-md-6 text-center"> 
        <img src="img/azure-hero.jpg" class="img-fluid hero-img" alt="Azure"/>

        </div>

     </div>
  </div> 
</section>


<section class="who-section"> 
  <div class="container">
     <div class="row align-items-center">

        <!-- IMAGE -->
        <div class="col-md-6 text-center mb-4 mb-md-0">
           <img src="img/azure-about.jpg" class="img-fluid who-img" alt="Azure Cloud Services" />
        </div>

        <!-- CONTENT -->
        <div class="col-md-6">

           <h5 class="section-tag">ABOUT AZURE</h5>

           <h2 class="section-title">Transform Your Business with Microsoft Azure Cloud</h2>

           <p class="section-text">
              Microsoft Azure is one of the world’s leading cloud computing platforms, offering a comprehensive suite 
              of services including computing, storage, networking, analytics, and artificial intelligence. It empowers 
              businesses to innovate faster, scale globally, and build high-performance applications without worrying 
              about infrastructure limitations.
           </p>

           <p class="section-text">
              Our Azure cloud expertise enables organizations to modernize legacy systems, implement cloud-native 
              architectures, and ensure enterprise-grade security and compliance. We focus on delivering reliable, 
              scalable, and cost-efficient solutions tailored to your business needs.
           </p>

           <ul class="who-list">
              <li><i class="fas fa-check text-info me-2"></i>Azure Cloud Migration & Deployment</li>
              <li><i class="fas fa-check text-info me-2"></i>DevOps Automation & CI/CD Pipelines</li>
              <li><i class="fas fa-check text-info me-2"></i>AI & Machine Learning Integration</li>
              <li><i class="fas fa-check text-info me-2"></i>Advanced Security & Compliance Solutions</li>
           </ul> 

        </div>
     </div>
  </div> 
</section>
   <!-- SERVICES -->
<section class="services-section"> 
<div class="container text-center">

<h5 class="section-tag">OUR AZURE SERVICES</h5>
<h2 class="section-title mb-5">Comprehensive Microsoft Azure Cloud Solutions</h2>

<div class="row g-4">

<div class="col-md-4">
<div class="service-card"> 
<i class="fas fa-cloud-upload-alt service-icon"></i> 
<h4>Azure Cloud Migration</h4>
<p>
We provide seamless and secure migration of your applications, databases, and infrastructure to Microsoft Azure. 
Our migration strategy ensures minimal downtime, zero data loss, and optimized performance while transitioning 
from on-premise or legacy systems to a modern cloud environment.
</p>
</div>
</div>

<div class="col-md-4">
<div class="service-card"> 
<i class="fas fa-laptop-code service-icon"></i> 
<h4>Azure App Development</h4>
<p>
We build scalable, cloud-native applications using Microsoft Azure services that are optimized for performance, 
security, and global accessibility. Our development approach ensures flexibility, faster deployment, and 
future-ready architecture for modern business needs.
</p>
</div>
</div>

<div class="col-md-4">
<div class="service-card"> 
<i class="fas fa-cogs service-icon"></i> 
<h4>DevOps & CI/CD Automation</h4>
<p>
We implement Azure DevOps tools to automate software development workflows, enabling continuous integration 
and continuous deployment (CI/CD). This results in faster releases, improved collaboration, and higher quality 
software delivery.
</p>
</div>
</div>

<div class="col-md-4">
<div class="service-card"> 
<i class="fas fa-robot service-icon"></i> 
<h4>AI & Machine Learning</h4>
<p>
We leverage Azure AI and Machine Learning services to build intelligent applications that automate processes, 
analyze data, and generate actionable insights, helping businesses make smarter decisions.
</p>
</div>
</div>

<div class="col-md-4">
<div class="service-card"> 
<i class="fas fa-shield-alt service-icon"></i> 
<h4>Azure Cloud Security</h4>
<p>
We implement enterprise-grade Azure security solutions including identity management, threat detection, 
and compliance frameworks to protect your applications and sensitive business data from cyber threats.
</p>
</div>
</div>

<div class="col-md-4">
<div class="service-card"> 
<i class="fas fa-chart-line service-icon"></i> 
<h4>Cost Optimization & Monitoring</h4>
<p>
We optimize your Azure cloud usage through smart resource allocation, performance monitoring, and cost 
management strategies to ensure maximum efficiency and reduced operational expenses.
</p>
</div>
</div>

</div>
</div> 
</section>
    <section class="process-section"> 
<div class="container">

<div class="text-center mb-5">
<h5 class="section-tag">OUR AZURE PROCESS</h5>
<h2 class="section-title">Our Proven Azure Cloud Implementation Workflow</h2>
<p class="section-text">
We follow a strategic, scalable, and performance-driven Azure cloud approach to ensure seamless adoption, 
secure infrastructure, and long-term business growth.
</p>
</div>

<div class="timeline">

<div class="timeline-item left">
<div class="content">
<h4>01. Requirement Analysis & Cloud Strategy</h4>
<p>
We analyze your existing systems, business goals, and technical requirements to design a tailored Azure 
cloud strategy that aligns with your scalability, performance, and cost objectives.
</p>
</div>
</div>

<div class="timeline-item right">
<div class="content">
<h4>02. Architecture Design & Planning</h4>
<p>
Our experts design a secure, scalable, and high-performance Azure architecture including networking, 
storage, and compute services to ensure reliability and efficiency.
</p>
</div>
</div>

<div class="timeline-item left">
<div class="content">
<h4>03. Cloud Migration & Development</h4>
<p>
We migrate applications, databases, and workloads to Azure with minimal downtime while also developing 
cloud-native solutions to enhance flexibility and performance.
</p>
</div>
</div>

<div class="timeline-item right">
<div class="content">
<h4>04. Testing, Security & Optimization</h4>
<p>
We perform comprehensive testing, implement advanced security measures, and optimize cloud resources 
to ensure high availability, compliance, and cost efficiency.
</p>
</div>
</div>

<div class="timeline-item left">
<div class="content">
<h4>05. Deployment, Monitoring & Support</h4>
<p>
We deploy your Azure solutions and provide continuous monitoring, scaling, and support to ensure smooth 
operations and long-term system performance.
</p>
</div>
</div>

</div>
</div> 
</section>
    <section class="faq-section"> 
  <div class="container">

     <div class="text-center mb-5">
        <h5 class="section-tag">FAQ</h5>
        <h2 class="section-title">Frequently Asked Questions</h2>
        <p class="section-text">
           Get answers to common questions about our Microsoft Azure cloud services and solutions.
        </p>
     </div>

     <div class="faq-container">

        <!-- Q1 -->
        <div class="faq-item">
           <button type="button" class="faq-question">
              What is Microsoft Azure and how can it benefit my business?
              <span class="icon">+</span>
           </button>
           <div class="faq-answer">
              <p>
                 Microsoft Azure is a cloud computing platform that helps businesses build, deploy, and manage applications 
                 through global data centers. It improves scalability, reduces infrastructure costs, and enhances security.
              </p>
           </div>
        </div>

        <!-- Q2 -->
        <div class="faq-item">
           <button type="button" class="faq-question">
              How long does Azure cloud migration take?
              <span class="icon">+</span>
           </button>
           <div class="faq-answer">
              <p>
                 Migration time depends on the size and complexity of your infrastructure. Small projects may take a few days, 
                 while enterprise-level migrations can take several weeks.
              </p>
           </div>
        </div>

        <!-- Q3 -->
        <div class="faq-item">
           <button type="button" class="faq-question">
              Is Azure secure for business applications?
              <span class="icon">+</span>
           </button>
           <div class="faq-answer">
              <p>
                 Yes, Azure provides enterprise-grade security with advanced threat protection, encryption, and compliance 
                 certifications to ensure your data remains safe and secure.
              </p>
           </div>
        </div>

        <!-- Q4 -->
        <div class="faq-item">
           <button type="button" class="faq-question">
              Do you provide ongoing support and maintenance?
              <span class="icon">+</span>
           </button>
           <div class="faq-answer">
              <p>
                 Absolutely. We offer continuous monitoring, maintenance, and support services to ensure your cloud 
                 infrastructure runs smoothly and efficiently.
              </p>
           </div>
        </div>

     </div>

  </div> 
</section>
   <script>
       const faqItems = document.querySelectorAll(".faq-item");

       faqItems.forEach(item => {
           const btn = item.querySelector(".faq-question");

           btn.addEventListener("click", (e) => {
               e.preventDefault(); // important

               faqItems.forEach(i => {
                   if (i !== item) {
                       i.classList.remove("active");
                   }
               });

               item.classList.toggle("active");
           });
       });
   </script>
</asp:Content>
