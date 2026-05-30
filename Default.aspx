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

/* CARD */
.tech-card {
    background: rgba(255, 255, 255, 0.06);
    padding: 25px;
    border-radius: 14px;
    transition: 0.4s ease;
    border: 1px solid rgba(255, 255, 255, 0.15);
    backdrop-filter: blur(10px);
}

/* HOVER EFFECT */
.tech-card:hover {
    transform: translateY(-10px) scale(1.02);
    border-color: #38bdf8;
    box-shadow: 0 10px 30px rgba(56, 189, 248, 0.2);
}

/* ICON */
.tech-card i {
    font-size: 38px;
    color: #38bdf8;
    margin-bottom: 10px;
}

/* TITLE */
.tech-card p {
    color: #ffffff;   /* 🔥 FIXED */
    margin: 5px 0 0;
    font-weight: 600;
    font-size: 16px;
}

/* SUB TEXT (agar small use kar rahe ho) */
.tech-card small {
    color: #cbd5f5;   /* 🔥 FIXED */
    font-size: 13px;
}

/* OPTIONAL: better visibility */
.tech-card:hover p {
    color: #38bdf8;
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

           <h1>Sansunic Private Limited</h1>

           <h2>Empowering Businesses with Scalable Digital & Cloud Solutions</h2>

           <p>
              At Sansunic, we specialize in delivering cutting-edge IT solutions that help businesses 
              innovate, scale, and stay ahead in the digital era. From custom web applications to advanced 
              cloud computing and AI-driven systems, we build technology that drives real business growth.
           </p>

           <p>
              Our team of expert developers, cloud engineers, and AI specialists work closely with clients 
              to design secure, high-performance, and scalable solutions tailored to their unique needs. 
              Whether you're a startup or an enterprise, we transform your ideas into powerful digital products.
           </p>

           <p>
              We focus on innovation, performance, and reliability to ensure that your business achieves 
              long-term success with modern technology solutions.
           </p>

           <div class="hero-buttons"> 
              <a class="btn btn-primary">Explore Our Services</a>
              <a class="btn btn-outline-light">Get Free Consultation</a> 
           </div>

        </div>

        <div class="col-md-6 text-center"> 
           <img src="https://images.unsplash.com/photo-1519389950473-47ba0277781c" 
                class="img-fluid hero-img" 
                alt="IT Solutions Company"/>            
        </div>

     </div>
  </div> 
</section>
    <section class="who-section"> 
  <div class="container">
     <div class="row align-items-center">

        <div class="col-md-6 text-center mb-4 mb-md-0">
           <img src="https://images.unsplash.com/photo-1551434678-e076c223a692" 
                class="img-fluid who-img" 
                alt="About Sansunic Software"/>
        </div>

        <div class="col-md-6">

           <h5 class="section-tag">WHO WE ARE</h5>

           <h2 class="section-title">
              We Build Smart, Scalable & Future-Ready Digital Solutions
           </h2>

           <p class="section-text">
              Sansunic Private Limited is a forward-thinking IT company focused on delivering 
              innovative, scalable, and high-performance digital solutions. We help businesses transform 
              their ideas into powerful software products that drive growth, efficiency, and long-term success.
           </p>

           <p class="section-text">
              Our team of experienced developers, cloud engineers, and AI specialists works closely with 
              clients to understand their challenges and provide customized solutions. From startups to 
              enterprise-level organizations, we empower businesses with technology that delivers real impact.
           </p>

           <p class="section-text">
              We combine modern technologies, strategic thinking, and a client-first approach to create 
              secure, scalable, and future-ready systems that adapt to changing market demands.
           </p>

           <ul class="who-list">

              <li>
                 <i class="fas fa-check text-info me-2"></i>
                 Custom Web & Enterprise Application Development
              </li>

              <li>
                 <i class="fas fa-check text-info me-2"></i>
                 AI, Machine Learning & Intelligent Automation Solutions
              </li>

              <li>
                 <i class="fas fa-check text-info me-2"></i>
                 Cloud Computing, DevOps & Scalable Infrastructure
              </li>

              <li>
                 <i class="fas fa-check text-info me-2"></i>
                 Secure, High-Performance & Future-Ready Systems
              </li>

           </ul> 

        </div>

     </div>
  </div> 
</section>
   <section class="services-section"> 
   <div class="container text-center">

      <h5 class="section-tag">WHAT WE DO</h5>

      <h2 class="section-title mb-5">
         We Deliver Scalable, Secure & High-Performance IT Solutions
      </h2>

      <div class="row g-4">

         <div class="col-md-4">
            <div class="service-card"> 
               <i class="fas fa-code service-icon"></i> 
               <h4>Web Development</h4>
               <p>
                  We build modern, responsive, and high-performance websites and web applications using the latest 
                  technologies to deliver seamless user experiences and drive business growth.
               </p>
            </div>
         </div>

         <div class="col-md-4">
            <div class="service-card"> 
               <i class="fas fa-brain service-icon"></i> 
               <h4>AI &amp; Machine Learning</h4>
               <p>
                  We develop intelligent AI and machine learning solutions that automate processes, analyze data, 
                  and enable smarter, data-driven decision-making for your business.
               </p>
            </div>
         </div>

         <div class="col-md-4">
            <div class="service-card"> 
               <i class="fas fa-cloud service-icon"></i> 
               <h4>Cloud Solutions</h4>
               <p>
                  We provide scalable, secure, and cost-effective cloud infrastructure solutions that help businesses 
                  migrate, manage, and optimize their operations in modern cloud environments.
               </p>
            </div>
         </div>

         <div class="col-md-4">
            <div class="service-card"> 
               <i class="fas fa-shield-alt service-icon"></i> 
               <h4>Cyber Security</h4>
               <p>
                  We implement advanced cybersecurity solutions to protect your applications, systems, and data from 
                  threats, ensuring compliance, privacy, and business continuity.
               </p>
            </div>
         </div>

         <div class="col-md-4">
            <div class="service-card"> 
               <i class="fas fa-mobile-alt service-icon"></i> 
               <h4>App Development</h4>
               <p>
                  We create high-performance mobile applications for Android and iOS platforms, focusing on usability, 
                  performance, and seamless user experience across devices.
               </p>
            </div>
         </div>

         <div class="col-md-4">
            <div class="service-card"> 
               <i class="fas fa-database service-icon"></i> 
               <h4>Data Management</h4>
               <p>
                  We provide end-to-end data management solutions including data storage, processing, analytics, 
                  and visualization to help businesses make informed decisions.
               </p>
            </div>
         </div>

      </div>

   </div> 
</section>
   <section class="why-section"> 
   <div class="container">
      <div class="row align-items-center">

         <div class="col-md-6">

            <h5 class="section-tag">WHY CHOOSE US</h5>

            <h2 class="section-title">
               Trusted Technology Partner for Scalable & Future-Ready Solutions
            </h2>

            <p class="section-text">
               At Sansunic, we go beyond just development — we deliver complete digital transformation 
               solutions that help businesses innovate, scale, and stay competitive in today’s fast-changing market. 
               Our approach combines modern technology, strategic thinking, and deep industry expertise to create 
               impactful solutions.
            </p>

            <p class="section-text">
               We focus on building long-term partnerships by delivering reliable, secure, and high-performance 
               systems that are tailored to your business goals. From startups to enterprises, we ensure every 
               solution is future-ready and results-driven.
            </p>

            <div class="why-points">

               <div>
                  <i class="fas fa-check text-info me-2"></i>
                  Highly Skilled Developers & Industry Experts
               </div>

               <div>
                  <i class="fas fa-check text-info me-2"></i>
                  Client-Centric Approach with Customized Solutions
               </div>

               <div>
                  <i class="fas fa-check text-info me-2"></i>
                  Scalable, Secure & High-Performance Systems
               </div>

               <div>
                  <i class="fas fa-check text-info me-2"></i>
                  Agile Development & On-Time Project Delivery
               </div>

               <div>
                  <i class="fas fa-check text-info me-2"></i>
                  End-to-End Support & Continuous Improvement
               </div>

            </div>

         </div>

         <div class="col-md-6">

            <div class="row g-4 text-center">

               <div class="col-6">
                  <div class="stat-card">
                     <h3>150+</h3>
                     <p>Successful Projects Delivered</p>
                  </div>
               </div>

               <div class="col-6">
                  <div class="stat-card">
                     <h3>100+</h3>
                     <p>Satisfied Clients Worldwide</p>
                  </div>
               </div>

               <div class="col-6">
                  <div class="stat-card">
                     <h3>5+</h3>
                     <p>Years of Industry Experience</p>
                  </div>
               </div>

               <div class="col-6">
                  <div class="stat-card">
                     <h3>24/7</h3>
                     <p>Dedicated Support & Maintenance</p>
                  </div>
               </div>

            </div>

         </div>

      </div>
   </div> 
</section>
   <section class="tech-section"> 
   <div class="container text-center">

      <h5 class="section-tag">TECHNOLOGIES</h5>

      <h2 class="section-title mb-3">
         Technologies We Use to Build Scalable & Future-Ready Solutions
      </h2>

      <p class="section-text mb-5">
         We leverage modern, industry-leading technologies to build high-performance, secure, and scalable 
         digital solutions. Our tech stack is carefully chosen to ensure reliability, flexibility, and 
         long-term business growth.
      </p>

      <div class="row g-4 justify-content-center">

         <div class="col-6 col-md-3">
            <div class="tech-card"> 
               <i class="fab fa-html5"></i> 
               <p>HTML5</p>
               <small>Modern Web Structure</small>
            </div>
         </div>

         <div class="col-6 col-md-3">
            <div class="tech-card"> 
               <i class="fab fa-css3-alt"></i> 
               <p>CSS3</p>
               <small>Responsive UI Design</small>
            </div>
         </div>

         <div class="col-6 col-md-3">
            <div class="tech-card"> 
               <i class="fab fa-js"></i> 
               <p>JavaScript</p>
               <small>Dynamic & Interactive Apps</small>
            </div>
         </div>

         <div class="col-6 col-md-3">
            <div class="tech-card"> 
               <i class="fab fa-react"></i> 
               <p>React</p>
               <small>Modern Frontend Framework</small>
            </div>
         </div>

         <div class="col-6 col-md-3">
            <div class="tech-card"> 
               <i class="fab fa-node-js"></i> 
               <p>Node.js</p>
               <small>Scalable Backend Solutions</small>
            </div>
         </div>

         <div class="col-6 col-md-3">
            <div class="tech-card"> 
               <i class="fas fa-database"></i> 
               <p>SQL Server</p>
               <small>Secure Data Management</small>
            </div>
         </div>

         <div class="col-6 col-md-3">
            <div class="tech-card"> 
               <i class="fab fa-microsoft"></i> 
               <p>.NET</p>
               <small>Enterprise Application Development</small>
            </div>
         </div>

         <div class="col-6 col-md-3">
            <div class="tech-card"> 
               <i class="fab fa-aws"></i> 
               <p>AWS</p>
               <small>Cloud Infrastructure & Scaling</small>
            </div>
         </div>

      </div>

   </div> 
</section>
   <section class="process-section"> 
   <div class="container">

      <div class="text-center mb-5">

         <h5 class="section-tag">OUR PROCESS</h5>

         <h2 class="section-title">
            Our Proven, Scalable & Result-Driven Development Workflow
         </h2>

         <p class="section-text">
            We follow a structured, agile, and transparent development process to deliver high-quality, 
            secure, and scalable software solutions. Our workflow ensures efficiency, faster delivery, 
            and measurable business outcomes at every stage.
         </p>

      </div>

      <div class="timeline">

         <div class="timeline-item left">
            <div class="content">
               <h4>01. Discovery & Consultation</h4>
               <p>
                  We start by understanding your business objectives, target audience, and technical requirements. 
                  This helps us define a clear project scope and create a strategic roadmap tailored to your goals.
               </p>
            </div>
         </div>

         <div class="timeline-item right">
            <div class="content">
               <h4>02. Planning & UI/UX Design</h4>
               <p>
                  Our team creates detailed wireframes, user journeys, and modern UI/UX designs to ensure a seamless, 
                  intuitive, and engaging user experience across all platforms.
               </p>
            </div>
         </div>

         <div class="timeline-item left">
            <div class="content">
               <h4>03. Development & Integration</h4>
               <p>
                  We build scalable, secure, and high-performance applications using modern technologies while integrating 
                  APIs, cloud services, and third-party systems for enhanced functionality.
               </p>
            </div>
         </div>

         <div class="timeline-item right">
            <div class="content">
               <h4>04. Testing & Quality Assurance</h4>
               <p>
                  We perform rigorous testing including functional, performance, and security testing to ensure the 
                  application is reliable, bug-free, and ready for real-world use.
               </p>
            </div>
         </div>

         <div class="timeline-item left">
            <div class="content">
               <h4>05. Deployment & Ongoing Support</h4>
               <p>
                  We deploy your solution into production and provide continuous monitoring, maintenance, and upgrades 
                  to ensure long-term performance, scalability, and business success.
               </p>
            </div>
         </div>

      </div>

   </div> 
</section>
    <section class="cta-section"> 
      <div class="container text-center">
         <h2>Let’s Build Something Great Together</h2>
         <p> Have an idea or project in mind? Our team is ready to turn your vision into a powerful digital solution. </p>
         <div class="cta-buttons"> 
            <a class="btn btn-light">Contact Us</a> </div>
      </div> </section> 

</asp:Content>
