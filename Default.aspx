<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SANSUNIC.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        
.hero-section {
    background: linear-gradient(135deg, #0f2027, #203a43, #2c5364);
    color: #fff;
    padding: 80px 0;
}

.hero-text h1 {
    font-size: 42px;
    font-weight: 700;
    margin-bottom: 15px;
}

.hero-text h2 {
    font-size: 24px;
    margin-bottom: 20px;
    color: #00d4ff;
}

.hero-text p {
    font-size: 16px;
    margin-bottom: 25px;
    line-height: 1.6;
}

.hero-buttons .btn {
    margin-right: 10px;
    padding: 10px 20px;
    border-radius: 30px;
}

.hero-img {
    max-width: 100%;
    animation: float 3s ease-in-out infinite;
}

@keyframes float {
    0% {
        transform: translateY(0px);
    }

    50% {
        transform: translateY(-15px);
    }

    100% {
        transform: translateY(0px);
    }
}

.who-section {
    padding: 80px 0;
    background: #020617;
}

.section-tag {
    color: #38bdf8;
    font-weight: 600;
    letter-spacing: 1px;
    margin-bottom: 10px;
}

.section-title {
    font-size: 32px;
    font-weight: 700;
    color: #fff;
    margin-bottom: 20px;
}

.section-text {
    color: #cbd5e1;
    margin-bottom: 15px;
    line-height: 1.6;
}

.who-list {
    list-style: none;
    padding: 0;
    margin-top: 20px;
}

.who-list li {
    margin-bottom: 10px;
    color: #e2e8f0;
}

.who-img {
    border-radius: 15px;
    box-shadow: 0 10px 30px rgba(0,0,0,0.4);
}
.services-section {
    padding: 80px 0;
    background: linear-gradient(135deg, #0f172a, #1e293b);
}

.service-card {
    background: rgba(255, 255, 255, 0.05);
    padding: 30px 20px;
    border-radius: 15px;
    transition: 0.3s;
    backdrop-filter: blur(10px);
    border: 1px solid rgba(255,255,255,0.1);
}

.service-card:hover {
    transform: translateY(-10px);
    border-color: #38bdf8;
}

.service-icon {
    font-size: 35px;
    margin-bottom: 15px;
    color: #38bdf8;
}

.service-card h4 {
    color: #fff;
    margin-bottom: 10px;
}

.service-card p {
    color: #cbd5e1;
    font-size: 14px;
}
.why-section {
    padding: 80px 0;
    background: #020617;
}

.why-points div {
    margin-top: 10px;
    color: #e2e8f0;
    font-size: 15px;
}

.stat-card {
    background: rgba(255,255,255,0.05);
    padding: 25px;
    border-radius: 12px;
    transition: 0.3s;
    border: 1px solid rgba(255,255,255,0.1);
}

.stat-card:hover {
    transform: scale(1.05);
    border-color: #38bdf8;
}

.stat-card h3 {
    font-size: 28px;
    color: #38bdf8;
    margin-bottom: 5px;
}

.stat-card p {
    color: #cbd5e1;
    font-size: 14px;
}
.tech-section {
    padding: 80px 0;
    background: linear-gradient(135deg, #0f172a, #1e293b);
}

.tech-card {
    background: rgba(255,255,255,0.05);
    padding: 25px;
    border-radius: 12px;
    transition: 0.3s;
    border: 1px solid rgba(255,255,255,0.1);
}

.tech-card:hover {
    transform: translateY(-8px);
    border-color: #38bdf8;
}

.tech-card i {
    font-size: 35px;
    color: #38bdf8;
    margin-bottom: 10px;
}

.tech-card p {
    color: #e2e8f0;
    margin: 0;
    font-weight: 500;
}

.process-section {
    padding: 100px 0;
    background: linear-gradient(135deg, #020617, #0f172a);
}

.timeline {
    position: relative;
    margin-top: 50px;
}

/* CENTER LINE */
.timeline::after {
    content: '';
    position: absolute;
    width: 3px;
    background: #38bdf8;
    top: 0;
    bottom: 0;
    left: 50%;
    margin-left: -1.5px;
}

/* ITEM */
.timeline-item {
    padding: 20px 40px;
    position: relative;
    width: 50%;
}

.timeline-item .content {
    background: rgba(255,255,255,0.05);
    padding: 25px;
    border-radius: 12px;
    border: 1px solid rgba(255,255,255,0.1);
    transition: 0.3s;
}

.timeline-item .content:hover {
    transform: translateY(-8px);
    border-color: #38bdf8;
}

/* LEFT RIGHT */
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
    border-radius: 50%;
    background: #38bdf8;
    z-index: 1;
}

.timeline-item.left::before {
    right: -8px;
}

.timeline-item.right::before {
    left: -8px;
}

/* TEXT */
.timeline-item h4 {
    color: #fff;
    margin-bottom: 10px;
}

.timeline-item p {
    color: #cbd5e1;
    font-size: 14px;
}

/* MOBILE FIX */
@media screen and (max-width: 768px) {

    .timeline::after {
        left: 20px;
    }

    .timeline-item {
        width: 100%;
        padding-left: 60px;
        padding-right: 20px;
    }

    .timeline-item.right {
        left: 0%;
    }

    .timeline-item.left::before,
    .timeline-item.right::before {
        left: 12px;
    }
}
.cta-section {
    padding: 80px 20px;
    background: linear-gradient(135deg, #3b82f6, #9333ea);
    color: white;
}

.cta-section h2 {
    font-size: 36px;
    font-weight: 700;
    margin-bottom: 15px;
}

.cta-section p {
    margin-bottom: 25px;
    font-size: 16px;
}

.cta-buttons .btn {
    margin: 5px;
    padding: 10px 20px;
    border-radius: 25px;
}
.contact-section {
    padding: 80px 0;
    background: #020617;
}

.contact-form {
    background: rgba(255,255,255,0.05);
    padding: 25px;
    border-radius: 12px;
}

.contact-form input,
.contact-form textarea {
    background: transparent;
    color: #fff;
    border: 1px solid rgba(255,255,255,0.2);
}

.contact-info {
    color: #cbd5e1;
}

.contact-info i {
    color: #38bdf8;
    margin-right: 8px;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section class="hero-section"> 
      <div class="container">
         <div class="row align-items-center">
            <div class="col-md-6 hero-text">
               <h1>Sansunic Software Private Limited</h1>
               <h2>Innovative IT Solutions for Your Business</h2>
               <p> We provide cutting-edge software solutions, web development, and digital transformation services to grow your business faster. </p>
               <div class="hero-buttons"> 
                  <a class="btn btn-primary">Our Services</a><a class="btn btn-outline-light">Contact Us</a> </div>
            </div>
            <div class="col-md-6 text-center"> 
               <img src="https://images.unsplash.com/photo-1519389950473-47ba0277781c" class="img-fluid hero-img" data-themekey="#" alt=""/>            &#160;</div>
         </div>
      </div> </section><section class="who-section"> 
      <div class="container">
         <div class="row align-items-center">
            <div class="col-md-6 text-center mb-4 mb-md-0">&#160;&#160;<img src="https://images.unsplash.com/photo-1551434678-e076c223a692" class="img-fluid who-img" alt="About Company" data-themekey="#"/></div>
            <div class="col-md-6">
               <h5 class="section-tag">WHO WE ARE</h5>
               <h2 class="section-title"> We Build Smart &amp; Scalable Software Solutions </h2>
               <p class="section-text"> Sansunic Software Private Limited is a modern IT company delivering innovative web development, AI-powered solutions, and enterprise software. </p>
               <p class="section-text"> Our mission is to empower businesses with cutting-edge technology, ensuring growth, efficiency, and digital transformation. </p>
               <ul class="who-list">
                  <li> 
                     <i class="fas fa-check text-info me-2"></i>Custom Web Applications</li>
                  <li> 
                     <i class="fas fa-check text-info me-2"></i>AI &amp; Machine Learning Solutions</li>
                  <li> 
                     <i class="fas fa-check text-info me-2"></i>Cloud &amp; Scalable Systems</li>
                  <li> 
                     <i class="fas fa-check text-info me-2"></i>Secure &amp; High Performance</li>
               </ul> 
            </div>
         </div>
      </div> </section><section class="services-section"> 
      <div class="container text-center">
         <h5 class="section-tag">WHAT WE DO</h5>
         <h2 class="section-title mb-5"> We Provide High Quality IT Solutions </h2>
         <div class="row g-4">
            <div class="col-md-4">
               <div class="service-card"> 
                  <i class="fas fa-code service-icon"></i> 
                  <h4>Web Development</h4>
                  <p>Custom websites and web applications built with modern technologies.</p>
               </div>
            </div>
            <div class="col-md-4">
               <div class="service-card"> 
                  <i class="fas fa-brain service-icon"></i> 
                  <h4>AI &amp; Machine Learning</h4>
                  <p>Smart AI solutions to automate and optimize business processes.</p>
               </div>
            </div>
            <div class="col-md-4">
               <div class="service-card"> 
                  <i class="fas fa-cloud service-icon"></i> 
                  <h4>Cloud Solutions</h4>
                  <p>Scalable and secure cloud infrastructure for modern businesses.</p>
               </div>
            </div>
            <div class="col-md-4">
               <div class="service-card"> 
                  <i class="fas fa-shield-alt service-icon"></i> 
                  <h4>Cyber Security</h4>
                  <p>Protect your systems with advanced security and monitoring solutions.</p>
               </div>
            </div>
            <div class="col-md-4">
               <div class="service-card"> 
                  <i class="fas fa-mobile-alt service-icon"></i> 
                  <h4>App Development</h4>
                  <p>High-performance mobile apps for Android and iOS platforms.</p>
               </div>
            </div>
            <div class="col-md-4">
               <div class="service-card"> 
                  <i class="fas fa-database service-icon"></i> 
                  <h4>Data Management<br/></h4>
                  <p>Efficient data handling, storage, and analytics solutions.</p>
               </div>
            </div>
         </div>
      </div> </section><section class="why-section"> 
      <div class="container">
         <div class="row align-items-center">
            <div class="col-md-6">
               <h5 class="section-tag">WHY CHOOSE US</h5>
               <h2 class="section-title"> We Deliver Reliable &amp; Future-Ready Solutions </h2>
               <p class="section-text"> At Sansunic Software, we combine innovation, technology, and strategy to deliver high-quality digital solutions tailored to your business needs. </p>
               <div class="why-points">
                  <div> 
                     <i class="fas fa-check text-info me-2"></i> Expert Developers &amp; Engineers</div>
                  <div> 
                     <i class="fas fa-check text-info me-2"></i>Client-Centric Approach</div>
                  <div> 
                     <i class="fas fa-check text-info me-2"></i>Scalable &amp; Secure Systems</div>
                  <div> 
                     <i class="fas fa-check text-info me-2"></i>On-Time Delivery</div>
               </div>
            </div>
            <div class="col-md-6">
               <div class="row g-4 text-center">
                  <div class="col-6">
                     <div class="stat-card">
                        <h3>150+</h3>
                        <p>Projects Completed</p>
                     </div>
                  </div>
                  <div class="col-6">
                     <div class="stat-card">
                        <h3>100+</h3>
                        <p>Happy Clients</p>
                     </div>
                  </div>
                  <div class="col-6">
                     <div class="stat-card">
                        <h3>5+</h3>
                        <p>Years Experience</p>
                     </div>
                  </div>
                  <div class="col-6">
                     <div class="stat-card">
                        <h3>24/7</h3>
                        <p>Support</p>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div> </section><section class="tech-section"> 
      <div class="container text-center">
         <h5 class="section-tag">TECHNOLOGIES</h5>
         <h2 class="section-title mb-5"> Technologies We Work With </h2>
         <div class="row g-4 justify-content-center">
            <div class="col-6 col-md-3">
               <div class="tech-card"> 
                  <i class="fab fa-html5"></i> 
                  <p>HTML5</p>
               </div>
            </div>
            <div class="col-6 col-md-3">
               <div class="tech-card"> 
                  <i class="fab fa-css3-alt"></i> 
                  <p>CSS3</p>
               </div>
            </div>
            <div class="col-6 col-md-3">
               <div class="tech-card"> 
                  <i class="fab fa-js"></i> 
                  <p>JavaScript</p>
               </div>
            </div>
            <div class="col-6 col-md-3">
               <div class="tech-card"> 
                  <i class="fab fa-react"></i> 
                  <p>React</p>
               </div>
            </div>
            <div class="col-6 col-md-3">
               <div class="tech-card"> 
                  <i class="fab fa-node-js"></i> 
                  <p>Node.js</p>
               </div>
            </div>
            <div class="col-6 col-md-3">
               <div class="tech-card"> 
                  <i class="fas fa-database"></i> 
                  <p>SQL Server</p>
               </div>
            </div>
            <div class="col-6 col-md-3">
               <div class="tech-card"> 
                  <i class="fab fa-microsoft"></i> 
                  <p>.NET</p>
               </div>
            </div>
            <div class="col-6 col-md-3">
               <div class="tech-card"> 
                  <i class="fab fa-aws"></i> 
                  <p>AWS</p>
               </div>
            </div>
         </div>
      </div> </section><section class="process-section"> 
      <div class="container">
         <div class="text-center mb-5">
            <h5 class="section-tag">OUR PROCESS</h5>
            <h2 class="section-title">Our Proven Development Workflow</h2>
            <p class="section-text"> We follow a structured and transparent process to deliver high-quality software solutions. </p>
         </div>
         <div class="timeline">
            <div class="timeline-item left">
               <div class="content">
                  <h4>01. Discovery &amp; Consultation</h4>
                  <p>We analyze your business goals, target audience, and technical requirements to define a clear project scope.</p>
               </div>
            </div>
            <div class="timeline-item right">
               <div class="content">
                  <h4>02. Planning &amp; UI/UX Design</h4>
                  <p>We create wireframes, UI designs, and a development roadmap to ensure a smooth execution process.</p>
               </div>
            </div>
            <div class="timeline-item left">
               <div class="content">
                  <h4>03. Development &amp; Integration</h4>
                  <p>Our developers build scalable, secure, and high-performance applications using modern technologies.</p>
               </div>
            </div>
            <div class="timeline-item right">
               <div class="content">
                  <h4>04. Testing &amp; Quality Assurance</h4>
                  <p>We rigorously test the product for performance, security, and usability before deployment.</p>
               </div>
            </div>
            <div class="timeline-item left">
               <div class="content">
                  <h4>05. Deployment &amp; Support</h4>
                  <p>We launch the product and provide continuous support, maintenance, and upgrades.</p>
               </div>
            </div>
         </div>
      </div> </section><section class="cta-section"> 
      <div class="container text-center">
         <h2>Let’s Build Something Great Together</h2>
         <p> Have an idea or project in mind? Our team is ready to turn your vision into a powerful digital solution. </p>
         <div class="cta-buttons"> 
            <a class="btn btn-light">Contact Us</a> </div>
      </div> </section> 
</asp:Content>
