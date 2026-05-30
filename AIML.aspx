<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AIML.aspx.cs" Inherits="SANSUNIC.AIML" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>/* HERO */
.hero-section {
    background: linear-gradient(135deg, #020617, #1e3a8a, #6366f1);
    color: #fff;
}

/* TEXT */
.hero-text h2 {
    color: #a5b4fc;
}

/* TAG */
.section-tag {
    color: #a5b4fc;
}

/* SERVICES */
.service-card:hover {
    border-color: #6366f1;
    box-shadow: 0 0 25px rgba(99,102,241,0.4);
}

/* ICON */
.service-icon {
    color: #a5b4fc;
}

/* PROCESS */
.timeline::after {
    background: #a5b4fc;
}
.timeline-item::before {
    background: #a5b4fc;
}

/* FAQ */
.faq-question .icon {
    color: #a5b4fc;
}

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<!-- HERO -->
<section class="hero-section"> 
<div class="container">
<div class="row align-items-center">

<div class="col-md-6 hero-text">
<h1>Artificial Intelligence & Machine Learning Solutions</h1>

<h2>Transform Your Business with Intelligent Automation & Data-Driven Insights</h2>

<p>
Artificial Intelligence (AI) and Machine Learning (ML) are transforming the way businesses operate by enabling 
systems to learn from data, automate decision-making, and deliver intelligent solutions. Organizations today 
need smarter systems that can analyze data, predict outcomes, and improve efficiency.
</p>

<p>
At Sansunic Private Limited, we provide advanced AI & ML solutions that help businesses unlock the 
true potential of their data. Our solutions are designed to automate processes, improve accuracy, and deliver 
insights that drive better decision-making.
</p>

<p>
From predictive analytics and recommendation systems to intelligent chatbots and automation, we help businesses 
leverage AI technologies to stay competitive in a rapidly evolving digital landscape.
</p>

<p>
Our goal is to build scalable, efficient, and intelligent systems that enhance productivity, reduce costs, 
and create new opportunities for growth.
</p>

<div class="hero-buttons"> 
<a class="btn btn-primary">Explore AI Solutions</a>
<a class="btn btn-outline-light">Get Consultation</a> 
</div>
</div>

<div class="col-md-6 text-center"> 
<img src="img/ai-hero.jpg" class="img-fluid hero-img" alt="AI ML"/>
</div>

</div>
</div> 
</section>

<!-- ABOUT -->
<section class="who-section"> 
<div class="container">
<div class="row align-items-center">

<div class="col-md-6 text-center">
<img src="img/ai-about.jpg" class="img-fluid who-img"/>
</div>

<div class="col-md-6">
<h5 class="section-tag">ABOUT AI & ML</h5>

<h2 class="section-title">Driving Innovation with Intelligent Technologies</h2>

<p class="section-text">
Artificial Intelligence enables machines to mimic human intelligence, while Machine Learning allows systems 
to learn from data and improve over time without explicit programming.
</p>

<p class="section-text">
We help businesses integrate AI & ML technologies into their systems to automate tasks, analyze large datasets, 
and generate actionable insights that drive business growth.
</p>

<p class="section-text">
Our expertise includes building predictive models, recommendation engines, NLP-based solutions, and AI-powered 
automation systems that improve efficiency and decision-making.
</p>

<p class="section-text">
By leveraging AI and ML, organizations can gain a competitive advantage, improve customer experience, and 
optimize business processes.
</p>

<ul class="who-list">
<li>✔ Predictive Analytics & Forecasting</li>
<li>✔ Natural Language Processing (NLP)</li>
<li>✔ Computer Vision Solutions</li>
<li>✔ AI-Powered Automation Systems</li>
</ul>

</div>
</div>
</div> 
</section>

<!-- SERVICES -->
<section class="services-section"> 
<div class="container text-center">

<h5 class="section-tag">OUR AI SERVICES</h5>
<h2 class="section-title mb-5">Comprehensive AI & Machine Learning Solutions</h2>

<div class="row g-4">

<div class="col-md-4">
<div class="service-card">
<i class="fas fa-brain service-icon"></i>
<h4>Machine Learning Models</h4>
<p>
We design and develop advanced machine learning models that can analyze large volumes of data, identify patterns, 
and generate accurate predictions. Our solutions enable businesses to automate decision-making processes, improve 
operational efficiency, and gain a competitive advantage through intelligent insights.
</p>
</div>
</div>

<div class="col-md-4">
<div class="service-card">
<i class="fas fa-chart-line service-icon"></i>
<h4>Predictive Analytics</h4>
<p>
We build powerful predictive analytics systems that help organizations forecast future trends, customer behavior, 
and market changes. By leveraging data-driven insights, businesses can make smarter decisions, reduce risks, 
and optimize their strategies for better outcomes.
</p>
</div>
</div>

<div class="col-md-4">
<div class="service-card">
<i class="fas fa-robot service-icon"></i>
<h4>AI Chatbots</h4>
<p>
We develop intelligent AI chatbots that enhance customer engagement by providing instant, accurate, and personalized 
responses. These chatbots automate customer interactions, reduce support workload, and improve overall user experience 
across digital platforms.
</p>
</div>
</div>

<div class="col-md-4">
<div class="service-card">
<i class="fas fa-language service-icon"></i>
<h4>NLP Solutions</h4>
<p>
Our Natural Language Processing solutions enable machines to understand, interpret, and respond to human language. 
We build systems for text analysis, sentiment analysis, document processing, and conversational AI to automate 
communication and extract valuable insights from unstructured data.
</p>
</div>
</div>

<div class="col-md-4">
<div class="service-card">
<i class="fas fa-eye service-icon"></i>
<h4>Computer Vision</h4>
<p>
We develop computer vision solutions that allow machines to analyze and interpret images and videos. These systems 
are used for object detection, facial recognition, quality inspection, and automation in industries such as 
healthcare, retail, and manufacturing.
</p>
</div>
</div>

<div class="col-md-4">
<div class="service-card">
<i class="fas fa-cogs service-icon"></i>
<h4>AI Automation</h4>
<p>
We implement AI-driven automation solutions that streamline business processes, reduce manual effort, and improve 
accuracy. Our automation systems help organizations operate more efficiently while focusing on strategic growth.
</p>
</div>
</div>

</div>
</div>
</section>
    <!-- PROCESS -->
<section class="process-section"> 
<div class="container">

<div class="text-center mb-5">
<h5 class="section-tag">OUR PROCESS</h5>
<h2 class="section-title">Our AI & ML Development Lifecycle</h2>
<p class="section-text">
We follow a structured, data-driven, and scalable approach to design, develop, and deploy AI-powered solutions 
that deliver measurable business value and long-term success.
</p>
</div>

<div class="timeline">

<div class="timeline-item left">
<div class="content">
<h4>01. Data Analysis & Strategy</h4>
<p>
We begin by analyzing your data, business requirements, and objectives. This helps us define a clear AI strategy 
and identify the most impactful use cases for machine learning and automation.
</p>
</div>
</div>

<div class="timeline-item right">
<div class="content">
<h4>02. Model Design & Architecture</h4>
<p>
Our experts design scalable AI architectures and machine learning models tailored to your business needs. 
We ensure the solution is optimized for performance, scalability, and real-world application.
</p>
</div>
</div>

<div class="timeline-item left">
<div class="content">
<h4>03. Development & Training</h4>
<p>
We develop and train AI models using high-quality datasets and advanced algorithms. Our focus is on building 
accurate, efficient, and adaptable models that can continuously learn and improve over time.
</p>
</div>
</div>

<div class="timeline-item right">
<div class="content">
<h4>04. Testing & Optimization</h4>
<p>
We rigorously test AI models to evaluate their performance, accuracy, and reliability. Continuous optimization 
ensures that the system performs effectively under real-world conditions.
</p>
</div>
</div>

<div class="timeline-item left">
<div class="content">
<h4>05. Deployment & Monitoring</h4>
<p>
We deploy AI solutions into production environments and implement continuous monitoring to ensure optimal performance. 
Our systems are designed to evolve with new data and business requirements.
</p>
</div>
</div>

</div>
</div>
</section>

<!-- FAQ -->
<section class="faq-section"> 
<div class="container">

<div class="text-center mb-5">
<h5 class="section-tag">FAQ</h5>
<h2 class="section-title">Frequently Asked Questions About AI & ML</h2>
</div>

<div class="faq-container">

<div class="faq-item">
<button type="button" class="faq-question">
What is Artificial Intelligence?
<span class="icon">+</span>
</button>
<div class="faq-answer">
<p>
AI enables machines to perform tasks that require human intelligence.
</p>
</div>
</div>

<div class="faq-item">
<button type="button" class="faq-question">
What is Machine Learning?
<span class="icon">+</span>
</button>
<div class="faq-answer">
<p>
ML allows systems to learn from data and improve over time.
</p>
</div>
</div>

<div class="faq-item">
<button type="button" class="faq-question">
How can AI help businesses?
<span class="icon">+</span>
</button>
<div class="faq-answer">
<p>
AI improves efficiency, automates processes, and provides insights.
</p>
</div>
</div>

<div class="faq-item">
<button type="button" class="faq-question">
Do you provide custom AI solutions?
<span class="icon">+</span>
</button>
<div class="faq-answer">
<p>
Yes, we build customized AI solutions tailored to business needs.
</p>
</div>
</div>

<div class="faq-item">
<button type="button" class="faq-question">
Is AI expensive?
<span class="icon">+</span>
</button>
<div class="faq-answer">
<p>
AI solutions can be cost-effective depending on requirements.
</p>
</div>
</div>

<div class="faq-item">
<button type="button" class="faq-question">
Do you provide support?
<span class="icon">+</span>
</button>
<div class="faq-answer">
<p>
Yes, we provide ongoing support and optimization.
</p>
</div>
</div>

</div>
</div>
</section>
<script src="js/main.js"></script>
</asp:Content>
