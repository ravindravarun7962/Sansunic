<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="SANSUNIC.Services" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <meta name="description" content="Explore the software development services offered by Sasunic Software including custom software, web development, mobile apps, backend systems, cloud solutions, and maintenance support." />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@300..800&family=Instrument+Serif:ital@0;1&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
    <style>
        :root {
            --color-bg: #f7f8fc;
            --color-surface: #ffffff;
            --color-surface-2: #f1f4fb;
            --color-border: rgba(30, 50, 120, 0.10);
            --color-text: #1a1d2e;
            --color-text-muted: #5a6080;
            --color-primary: #2348d4;
            --color-primary-hover: #1838b0;
            --color-primary-light: #eaf0ff;
            --color-accent: #f06a00;
            --color-accent-light: #fff3e8;
            --font-display: 'Instrument Serif', Georgia, serif;
            --font-body: 'Plus Jakarta Sans', 'Segoe UI', sans-serif;
            --text-xs: clamp(0.75rem, 0.7rem + 0.25vw, 0.875rem);
            --text-sm: clamp(0.875rem, 0.8rem + 0.35vw, 1rem);
            --text-base: clamp(1rem, 0.95rem + 0.25vw, 1.125rem);
            --text-lg: clamp(1.125rem, 1rem + 0.75vw, 1.5rem);
            --text-xl: clamp(1.5rem, 1.2rem + 1.25vw, 2.25rem);
            --text-2xl: clamp(2rem, 1.2rem + 2.5vw, 3.5rem);
            --text-3xl: clamp(2.5rem, 1rem + 4vw, 5rem);
            --space-2: 0.5rem; --space-3: 0.75rem; --space-4: 1rem; --space-5: 1.25rem; --space-6: 1.5rem;
            --space-8: 2rem; --space-10: 2.5rem; --space-12: 3rem; --space-16: 4rem; --space-20: 5rem;
            --radius-md: 0.625rem; --radius-lg: 1rem; --radius-xl: 1.5rem; --radius-full: 9999px;
            --shadow-md: 0 6px 18px rgba(30,50,120,0.10);
            --shadow-lg: 0 14px 38px rgba(30,50,120,0.14);
            --transition: 220ms cubic-bezier(0.16, 1, 0.3, 1);
        }

        *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }
        html { scroll-behavior: smooth; }
        body { font-family: var(--font-body); font-size: var(--text-base); color: var(--color-text); background: var(--color-bg); line-height: 1.75; }
        a { color: inherit; text-decoration: none; }
        .container { max-width: 1180px; margin-inline: auto; padding-inline: var(--space-6); }
        .section-tag { font-size: var(--text-xs); font-weight: 700; letter-spacing: 0.1em; text-transform: uppercase; color: var(--color-primary); margin-bottom: var(--space-3); }
        .section-title { font-family: var(--font-display); font-size: var(--text-2xl); font-weight: 400; margin-bottom: var(--space-4); }
        .section-desc { color: var(--color-text-muted); max-width: 66ch; }
        .btn { display: inline-flex; align-items: center; gap: var(--space-2); font-size: var(--text-sm); font-weight: 600; padding: 0.9rem 1.55rem; border-radius: var(--radius-md); transition: all var(--transition); }
        .btn-primary { background: var(--color-primary); color: #fff; }
        .btn-primary:hover { background: var(--color-primary-hover); transform: translateY(-1px); }
        .btn-outline { border: 1.5px solid var(--color-primary); color: var(--color-primary); background: transparent; }
        .btn-outline:hover { background: var(--color-primary-light); }

        .hero { position: relative; overflow: hidden; padding: clamp(var(--space-16), 10vw, 9rem) 0 var(--space-16); }
        .hero::before {
            content: ''; position: absolute; inset: 0;
            background: radial-gradient(ellipse 75% 72% at 78% 18%, rgba(35,72,212,0.08) 0%, transparent 58%), linear-gradient(180deg, #eef2ff 0%, #f7f8fc 100%);
        }
        .hero-grid { position: relative; z-index: 1; display: grid; grid-template-columns: 1.08fr 0.92fr; gap: var(--space-12); align-items: center; }
        .hero-label { display: inline-flex; align-items: center; gap: var(--space-2); padding: 0.45rem 0.95rem; background: var(--color-accent-light); color: var(--color-accent); border-radius: var(--radius-full); font-size: var(--text-xs); font-weight: 700; letter-spacing: 0.06em; text-transform: uppercase; margin-bottom: var(--space-6); }
        .hero-title { font-family: var(--font-display); font-size: var(--text-3xl); font-weight: 400; line-height: 1.08; margin-bottom: var(--space-6); }
        .hero-title em { color: var(--color-primary); font-style: italic; }
        .hero-desc { font-size: var(--text-lg); color: var(--color-text-muted); max-width: 55ch; margin-bottom: var(--space-8); }
        .hero-actions { display: flex; gap: var(--space-4); flex-wrap: wrap; }
        .hero-panel { background: var(--color-surface); border: 1px solid var(--color-border); border-radius: var(--radius-xl); padding: var(--space-8); box-shadow: var(--shadow-lg); }
        .hero-panel h3 { font-size: var(--text-lg); margin-bottom: var(--space-4); }
        .hero-panel p { color: var(--color-text-muted); margin-bottom: var(--space-6); }
        .hero-list { display: grid; gap: var(--space-4); }
        .hero-item { display: flex; gap: var(--space-3); align-items: flex-start; }
        .hero-icon { width: 42px; height: 42px; border-radius: 12px; background: var(--color-primary-light); color: var(--color-primary); display: flex; align-items: center; justify-content: center; flex-shrink: 0; }
        .hero-item h4 { font-size: var(--text-sm); margin-bottom: 4px; }
        .hero-item p { font-size: var(--text-xs); color: var(--color-text-muted); margin: 0; }

        .services-section, .benefits-section, .process-section, .cta-section { padding: clamp(var(--space-12), 7vw, var(--space-20)) 0; }
        .services-grid { display: grid; grid-template-columns: repeat(auto-fill, minmax(min(330px, 100%), 1fr)); gap: var(--space-6); margin-top: var(--space-10); }
        .service-card { background: var(--color-surface); border: 1px solid var(--color-border); border-radius: var(--radius-xl); padding: var(--space-8); box-shadow: var(--shadow-md); transition: all var(--transition); }
        .service-card:hover { transform: translateY(-5px); box-shadow: var(--shadow-lg); }
        .service-icon { width: 56px; height: 56px; border-radius: 18px; display: flex; align-items: center; justify-content: center; font-size: 1.3rem; margin-bottom: var(--space-5); background: var(--color-primary-light); color: var(--color-primary); }
        .service-title { font-size: var(--text-lg); font-weight: 700; margin-bottom: var(--space-3); }
        .service-desc { color: var(--color-text-muted); font-size: var(--text-sm); margin-bottom: var(--space-4); }
        .service-points { list-style: none; display: grid; gap: 10px; }
        .service-points li { position: relative; padding-left: 1.25rem; color: var(--color-text); font-size: var(--text-sm); }
        .service-points li::before { content: ''; position: absolute; left: 0; top: 0.65rem; width: 7px; height: 7px; border-radius: 50%; background: var(--color-accent); }

        .benefits-section { background: var(--color-surface); }
        .benefits-wrap { display: grid; grid-template-columns: 0.95fr 1.05fr; gap: var(--space-12); align-items: start; }
        .benefit-panel { background: var(--color-surface-2); border: 1px solid var(--color-border); border-radius: var(--radius-xl); padding: var(--space-8); }
        .benefit-panel h3 { font-size: var(--text-lg); margin-bottom: var(--space-4); }
        .benefit-items { display: grid; gap: var(--space-5); }
        .benefit-item { display: flex; gap: var(--space-3); }
        .benefit-mark { width: 38px; height: 38px; border-radius: 12px; background: #fff; color: var(--color-primary); display: flex; align-items: center; justify-content: center; flex-shrink: 0; border: 1px solid var(--color-border); }
        .benefit-item h4 { font-size: var(--text-base); margin-bottom: 4px; }
        .benefit-item p { font-size: var(--text-sm); color: var(--color-text-muted); }

        .process-grid { display: grid; grid-template-columns: repeat(4, 1fr); gap: var(--space-6); margin-top: var(--space-10); }
        .process-card { background: var(--color-surface); border: 1px solid var(--color-border); border-radius: var(--radius-xl); padding: var(--space-8); position: relative; }
        .process-number { width: 44px; height: 44px; border-radius: 14px; background: var(--color-primary); color: #fff; display: flex; align-items: center; justify-content: center; font-weight: 700; margin-bottom: var(--space-5); }
        .process-card h3 { font-size: var(--text-base); margin-bottom: var(--space-3); }
        .process-card p { font-size: var(--text-sm); color: var(--color-text-muted); }

        .cta-box { background: linear-gradient(135deg, #1c2d7c 0%, #2348d4 100%); color: #fff; border-radius: var(--radius-xl); padding: clamp(var(--space-8), 4vw, var(--space-12)); display: grid; grid-template-columns: 1fr auto; gap: var(--space-10); align-items: center; }
        .cta-box h2 { font-family: var(--font-display); font-size: var(--text-2xl); font-weight: 400; margin-bottom: var(--space-4); }
        .cta-box p { color: rgba(255,255,255,0.84); max-width: 58ch; }
        .cta-actions { display: flex; flex-direction: column; gap: 12px; }

        @media (max-width: 980px) {
            .hero-grid, .benefits-wrap, .cta-box, .process-grid { grid-template-columns: 1fr; }
        }
        @media (max-width: 768px) {
            .services-grid { grid-template-columns: 1fr; }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section class="hero" aria-label="Services Hero Section">
        <div class="container">
            <div class="hero-grid">
                <div>
                    <span class="hero-label"><i class="fa-solid fa-briefcase"></i> Our Services</span>
                    <h1 class="hero-title">Services Built Around <em>Real Business Needs</em></h1>
                    <p class="hero-desc">
                        At Sansunic, our services are designed for businesses that want dependable technology, better workflow management, and digital systems that actually support day-to-day operations. We do not believe in offering one-size-fits-all solutions. We listen carefully, understand the requirement properly, and then create technology that is practical, scalable, and genuinely useful.
                    </p>
                    <div class="hero-actions">
                        <asp:HyperLink runat="server" NavigateUrl="~/contact.aspx" CssClass="btn btn-primary"><i class="fa-solid fa-paper-plane"></i> Request a Consultation</asp:HyperLink>
                        <asp:HyperLink runat="server" NavigateUrl="~/about.aspx" CssClass="btn btn-outline">About Our Company</asp:HyperLink>
                    </div>
                </div>
                <div>
                    <div class="hero-panel">
                        <h3>What you can expect from our service approach</h3>
                        <p>Well-structured service pages usually perform best when they clearly explain what the company offers, how those services help the client, and what the next step should be for the visitor. [web:57][web:59][web:63]</p>
                        <div class="hero-list">
                            <div class="hero-item">
                                <div class="hero-icon"><i class="fa-solid fa-comments"></i></div>
                                <div>
                                    <h4>Requirement Understanding</h4>
                                    <p>We begin with discussion, analysis, and business understanding before writing code.</p>
                                </div>
                            </div>
                            <div class="hero-item">
                                <div class="hero-icon"><i class="fa-solid fa-gears"></i></div>
                                <div>
                                    <h4>Solution Planning</h4>
                                    <p>We create a development direction that matches your workflow, users, and future plans.</p>
                                </div>
                            </div>
                            <div class="hero-item">
                                <div class="hero-icon"><i class="fa-solid fa-shield-halved"></i></div>
                                <div>
                                    <h4>Reliable Delivery</h4>
                                    <p>We focus on clean execution, maintainable structure, and support after launch.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="services-section" aria-labelledby="servicesHeading">
        <div class="container">
            <p class="section-tag">Service Categories</p>
            <h2 class="section-title" id="servicesHeading">Technology Services We Provide</h2>
            <p class="section-desc">
                A strong services page should break down offerings clearly, explain the value of each service, and make it easy for visitors to understand how the company can solve their specific problem. [web:57][web:58][web:63]
            </p>
            <div class="services-grid">
                <article class="service-card">
                    <div class="service-icon"><i class="fa-solid fa-laptop-code"></i></div>
                    <h3 class="service-title">Custom Software Development</h3>
                    <p class="service-desc">
                        Every business has its own process, challenges, approvals, reporting needs, and workflow structure. Because of that, pre-made tools do not always fit properly. Our custom software development service focuses on creating systems that match the way your organization actually works.
                    </p>
                    <ul class="service-points">
                        <li>Business process based software planning and development.</li>
                        <li>Custom dashboards, internal portals, and operational systems.</li>
                        <li>Flexible architecture for future features and scaling.</li>
                    </ul>
                </article>

                <article class="service-card">
                    <div class="service-icon"><i class="fa-solid fa-globe"></i></div>
                    <h3 class="service-title">Web Application Development</h3>
                    <p class="service-desc">
                        We develop responsive and user-friendly web applications for businesses that want stronger digital presence and better system accessibility. Our focus stays on speed, clarity, usability, and a clean experience for both users and administrators.
                    </p>
                    <ul class="service-points">
                        <li>Responsive business websites and web-based platforms.</li>
                        <li>Admin panels, data views, and management modules.</li>
                        <li>Secure architecture with structured frontend and backend integration.</li>
                    </ul>
                </article>

                <article class="service-card">
                    <div class="service-icon"><i class="fa-solid fa-mobile-screen-button"></i></div>
                    <h3 class="service-title">Mobile App Development</h3>
                    <p class="service-desc">
                        Mobile access is no longer optional for many businesses. We create mobile applications that support customer convenience, internal productivity, and faster communication. The goal is not just to make an app, but to create a smooth digital experience that people actually find useful.
                    </p>
                    <ul class="service-points">
                        <li>User-friendly app interfaces focused on simplicity.</li>
                        <li>Business utility apps for employees, customers, or partners.</li>
                        <li>Performance-focused development with practical features.</li>
                    </ul>
                </article>

                <article class="service-card">
                    <div class="service-icon"><i class="fa-solid fa-database"></i></div>
                    <h3 class="service-title">Backend and Database Solutions</h3>
                    <p class="service-desc">
                        A strong application needs a reliable backend and a properly designed database. We develop backend systems that handle logic, workflows, reporting, data control, and system integration without becoming difficult to maintain later.
                    </p>
                    <ul class="service-points">
                        <li>Structured backend logic and API-based communication.</li>
                        <li>Database design, optimization, and reporting support.</li>
                        <li>Performance-minded development for long-term system stability.</li>
                    </ul>
                </article>

                <article class="service-card">
                    <div class="service-icon"><i class="fa-solid fa-cloud"></i></div>
                    <h3 class="service-title">Cloud and Deployment Services</h3>
                    <p class="service-desc">
                        Launching a system is not only about development. It also requires proper hosting, deployment planning, technical setup, and performance awareness. We help businesses move their applications into dependable cloud-ready environments with more confidence and less confusion.
                    </p>
                    <ul class="service-points">
                        <li>Deployment assistance for websites, portals, and applications.</li>
                        <li>Cloud-ready configuration and environment setup.</li>
                        <li>Support for uptime, access, and operational continuity.</li>
                    </ul>
                </article>

                <article class="service-card">
                    <div class="service-icon"><i class="fa-solid fa-headset"></i></div>
                    <h3 class="service-title">Support and Maintenance</h3>
                    <p class="service-desc">
                        Good software needs ongoing attention after launch. Business requirements change, users give feedback, and systems need updates over time. Our support and maintenance service helps keep your application stable, current, and ready for future improvement.
                    </p>
                    <ul class="service-points">
                        <li>Issue fixing, updates, and functional improvements.</li>
                        <li>Ongoing technical support for business continuity.</li>
                        <li>Long-term maintenance for reliability and performance.</li>
                    </ul>
                </article>
            </div>
        </div>
    </section>

    <section class="benefits-section" aria-labelledby="benefitsHeading">
        <div class="container">
            <div class="benefits-wrap">
                <div>
                    <p class="section-tag">Why Our Services Matter</p>
                    <h2 class="section-title" id="benefitsHeading">Technology Should Reduce Complexity, Not Increase It</h2>
                    <p class="section-desc">
                        Many businesses struggle with disconnected tools, repetitive manual work, unclear reporting, and systems that stop supporting growth after a certain point. Our services are built to reduce those issues by creating software that feels organized, dependable, and aligned with real operations.
                    </p>
                    <p class="section-desc" style="margin-top:16px;">
                        Instead of only focusing on features, we focus on usefulness. We think about how the software will be used every day, who will manage it, where the delays usually happen, and what kind of experience will help the business run more smoothly.
                    </p>
                </div>
                <div class="benefit-panel">
                    <h3>Benefits clients usually look for in a service page</h3>
                    <div class="benefit-items">
                        <div class="benefit-item">
                            <div class="benefit-mark"><i class="fa-solid fa-check"></i></div>
                            <div>
                                <h4>Clear understanding</h4>
                                <p>Visitors should quickly understand what service is offered and whether it matches their requirement. </p>
                            </div>
                        </div>
                        <div class="benefit-item">
                            <div class="benefit-mark"><i class="fa-solid fa-check"></i></div>
                            <div>
                                <h4>Practical business value</h4>
                                <p>Service descriptions work better when they show the outcome and benefit, not just the technical label.</p>
                            </div>
                        </div>
                        <div class="benefit-item">
                            <div class="benefit-mark"><i class="fa-solid fa-check"></i></div>
                            <div>
                                <h4>Easy next step</h4>
                                <p>Strong service pages guide users toward consultation, enquiry, or contact without making the journey confusing. </p>
                            </div>
                        </div>
                        <div class="benefit-item">
                            <div class="benefit-mark"><i class="fa-solid fa-check"></i></div>
                            <div>
                                <h4>Trust and clarity</h4>
                                <p>Well-organized service content makes a company feel more credible and easier to approach. [web:59][web:63]</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="process-section" aria-labelledby="processHeading">
        <div class="container">
            <p class="section-tag">How We Work</p>
            <h2 class="section-title" id="processHeading">Our Service Process</h2>
            <p class="section-desc">
                When businesses are investing in software, they usually want more than coding support. They want a team that understands the problem properly, gives structured direction, and delivers work in a dependable way. That is why our service process stays practical, transparent, and goal-oriented from the beginning.
            </p>
            <div class="process-grid">
                <div class="process-card">
                    <div class="process-number">01</div>
                    <h3>Understanding the Requirement</h3>
                    <p>We begin with discussion, problem understanding, and workflow analysis so the service starts from real business needs rather than assumptions.</p>
                </div>
                <div class="process-card">
                    <div class="process-number">02</div>
                    <h3>Planning the Right Solution</h3>
                    <p>We define a practical technical direction, identify priorities, and shape the service according to project goals and users.</p>
                </div>
                <div class="process-card">
                    <div class="process-number">03</div>
                    <h3>Development and Implementation</h3>
                    <p>We execute the work with attention to structure, usability, functionality, and maintainability so the result is useful beyond launch.</p>
                </div>
                <div class="process-card">
                    <div class="process-number">04</div>
                    <h3>Support and Improvement</h3>
                    <p>After deployment, we remain available for updates, assistance, improvements, and long-term technical continuity.</p>
                </div>
            </div>
        </div>
    </section>

    <section class="cta-section" aria-labelledby="ctaHeading">
        <div class="container">
            <div class="cta-box">
                <div>
                    <h2 id="ctaHeading">Need the right service for your business?</h2>
                    <p>
                        Effective service pages should make the next step clear, whether that is contacting the company, requesting consultation, or moving into a more focused discussion about requirements.
                    </p>
                    <p style="margin-top:16px; color:rgba(255,255,255,0.84);">
                        Share your requirement with Sansunic and we will help you identify the most suitable digital solution for your business.
                    </p>
                </div>
                <div class="cta-actions">
                    <asp:HyperLink runat="server" NavigateUrl="~/contact.aspx" CssClass="btn btn-primary" style="background:#fff;color:#2348d4;">Contact Us</asp:HyperLink>
                    <asp:HyperLink runat="server" NavigateUrl="mailto:info@sansunic.com" CssClass="btn btn-outline" style="border-color:#fff;color:#fff;">Email Us</asp:HyperLink>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
