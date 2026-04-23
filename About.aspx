<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="SANSUNIC.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <meta name="description" content="Learn more about Sasunic Software, our mission, our approach, and how to contact us for software development services." />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@300..800&family=Instrument+Serif:ital@0;1&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
    <style>
        :root {
            --color-bg: #f7f8fc;
            --color-surface: #ffffff;
            --color-surface-2: #f0f2fa;
            --color-border: rgba(30, 50, 120, 0.10);
            --color-text: #1a1d2e;
            --color-text-muted: #5a6080;
            --color-text-faint: #98a1ba;
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
            --space-2: 0.5rem; --space-3: 0.75rem; --space-4: 1rem; --space-6: 1.5rem;
            --space-8: 2rem; --space-10: 2.5rem; --space-12: 3rem; --space-16: 4rem; --space-20: 5rem;
            --radius-md: 0.625rem; --radius-lg: 1rem; --radius-xl: 1.5rem; --radius-full: 9999px;
            --shadow-md: 0 4px 16px rgba(30,50,120,0.10);
            --shadow-lg: 0 12px 40px rgba(30,50,120,0.14);
            --transition: 200ms cubic-bezier(0.16, 1, 0.3, 1);
        }

        *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }
        html { scroll-behavior: smooth; }
        body { font-family: var(--font-body); font-size: var(--text-base); color: var(--color-text); background: var(--color-bg); line-height: 1.7; }
        a { color: inherit; text-decoration: none; }
        .container { max-width: 1180px; margin-inline: auto; padding-inline: var(--space-6); }
        .section-tag { font-size: var(--text-xs); font-weight: 700; letter-spacing: 0.1em; text-transform: uppercase; color: var(--color-primary); margin-bottom: var(--space-3); }
        .section-title { font-family: var(--font-display); font-size: var(--text-2xl); font-weight: 400; margin-bottom: var(--space-4); }
        .section-desc { color: var(--color-text-muted); max-width: 64ch; line-height: 1.8; }
        .btn { display: inline-flex; align-items: center; gap: var(--space-2); font-size: var(--text-sm); font-weight: 600; padding: 0.85rem 1.5rem; border-radius: var(--radius-md); transition: all var(--transition); }
        .btn-primary { background: var(--color-primary); color: #fff; }
        .btn-primary:hover { background: var(--color-primary-hover); transform: translateY(-1px); }
        .btn-outline { border: 1.5px solid var(--color-primary); color: var(--color-primary); background: transparent; }
        .btn-outline:hover { background: var(--color-primary-light); }

        .hero { position: relative; overflow: hidden; padding: clamp(var(--space-16), 10vw, 9rem) 0 var(--space-16); }
        .hero::before {
            content: ''; position: absolute; inset: 0;
            background: radial-gradient(ellipse 70% 70% at 75% 20%, rgba(35,72,212,0.08) 0%, transparent 60%), linear-gradient(180deg, #eef2ff 0%, #f7f8fc 100%);
        }
        .hero-grid { position: relative; z-index: 1; display: grid; grid-template-columns: 1.05fr 0.95fr; gap: var(--space-12); align-items: center; }
        .hero-label { display: inline-flex; align-items: center; gap: var(--space-2); padding: 0.45rem 0.95rem; background: var(--color-accent-light); color: var(--color-accent); border-radius: var(--radius-full); font-size: var(--text-xs); font-weight: 700; letter-spacing: 0.06em; text-transform: uppercase; margin-bottom: var(--space-6); }
        .hero-title { font-family: var(--font-display); font-size: var(--text-3xl); font-weight: 400; line-height: 1.08; margin-bottom: var(--space-6); }
        .hero-title em { color: var(--color-primary); font-style: italic; }
        .hero-desc { font-size: var(--text-lg); color: var(--color-text-muted); max-width: 54ch; margin-bottom: var(--space-8); }
        .hero-actions { display: flex; gap: var(--space-4); flex-wrap: wrap; }
        .hero-card { background: var(--color-surface); border: 1px solid var(--color-border); border-radius: var(--radius-xl); padding: var(--space-8); box-shadow: var(--shadow-lg); }
        .hero-card h3 { font-size: var(--text-lg); margin-bottom: var(--space-4); }
        .hero-card p { color: var(--color-text-muted); margin-bottom: var(--space-6); }
        .info-list { display: grid; gap: var(--space-4); }
        .info-item { display: flex; gap: var(--space-3); align-items: flex-start; }
        .info-icon { width: 42px; height: 42px; border-radius: 12px; background: var(--color-primary-light); color: var(--color-primary); display: flex; align-items: center; justify-content: center; flex-shrink: 0; }
        .info-item h4 { font-size: var(--text-sm); margin-bottom: 4px; }
        .info-item p, .info-item a { font-size: var(--text-sm); color: var(--color-text-muted); }
        .info-item a:hover { color: var(--color-primary); }

        .about-section, .values-section, .contact-section { padding: clamp(var(--space-12), 7vw, var(--space-20)) 0; }
        .about-grid { display: grid; grid-template-columns: 1fr 1fr; gap: var(--space-12); align-items: center; }
        .about-card { background: var(--color-surface); border: 1px solid var(--color-border); border-radius: var(--radius-xl); padding: var(--space-8); box-shadow: var(--shadow-md); }
        .about-points { display: grid; gap: var(--space-5); margin-top: var(--space-6); }
        .about-point { display: flex; gap: var(--space-3); }
        .about-point-icon { width: 38px; height: 38px; border-radius: 12px; background: var(--color-primary-light); color: var(--color-primary); display: flex; align-items: center; justify-content: center; flex-shrink: 0; }
        .about-point h4 { font-size: var(--text-base); margin-bottom: 4px; }
        .about-point p { font-size: var(--text-sm); color: var(--color-text-muted); }

        .values-section { background: var(--color-surface); }
        .values-grid { display: grid; grid-template-columns: repeat(3, 1fr); gap: var(--space-6); margin-top: var(--space-10); }
        .value-card { border: 1px solid var(--color-border); border-radius: var(--radius-xl); padding: var(--space-8); background: #fff; transition: all var(--transition); }
        .value-card:hover { transform: translateY(-4px); box-shadow: var(--shadow-md); }
        .value-icon { width: 52px; height: 52px; border-radius: 16px; display: flex; align-items: center; justify-content: center; font-size: 1.2rem; margin-bottom: var(--space-5); background: var(--color-primary-light); color: var(--color-primary); }
        .value-card h3 { font-size: var(--text-lg); margin-bottom: var(--space-3); }
        .value-card p { color: var(--color-text-muted); font-size: var(--text-sm); }

        .contact-box { background: linear-gradient(135deg, #1c2d7c 0%, #2348d4 100%); color: #fff; border-radius: var(--radius-xl); padding: clamp(var(--space-8), 4vw, var(--space-12)); display: grid; grid-template-columns: 1fr 1fr; gap: var(--space-10); align-items: start; }
        .contact-box h2 { font-family: var(--font-display); font-size: var(--text-2xl); font-weight: 400; margin-bottom: var(--space-4); }
        .contact-box p { color: rgba(255,255,255,0.84); }
        .contact-card { background: rgba(255,255,255,0.08); border: 1px solid rgba(255,255,255,0.12); border-radius: var(--radius-xl); padding: var(--space-8); backdrop-filter: blur(8px); }
        .contact-card-item { display: flex; gap: var(--space-3); align-items: flex-start; margin-bottom: var(--space-5); }
        .contact-card-item:last-child { margin-bottom: 0; }
        .contact-card-icon { width: 42px; height: 42px; border-radius: 12px; background: rgba(255,255,255,0.14); display: flex; align-items: center; justify-content: center; flex-shrink: 0; }
        .contact-card-item h4 { font-size: var(--text-sm); margin-bottom: 4px; }
        .contact-card-item p, .contact-card-item a { font-size: var(--text-sm); color: rgba(255,255,255,0.88); word-break: break-word; }
        .contact-card-item a:hover { color: #fff; text-decoration: underline; }

        @media (max-width: 900px) {
            .hero-grid, .about-grid, .contact-box, .values-grid { grid-template-columns: 1fr; }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- ================= HERO ================= -->
 <section class="hero" aria-label="About Hero Section">
        <div class="container">
            <div class="hero-grid">
                <div>
                    <span class="hero-label"><i class="fa-solid fa-building"></i> About Sansunic Software</span>
                    <h1 class="hero-title">Building Software With <em>Clarity, Purpose, and Trust</em></h1>
                    <p class="hero-desc">
                        Sansunic Software is focused on helping businesses move forward with practical digital solutions. We build modern software systems that support operations, improve efficiency, and create better experiences for users, teams, and organizations.
                    </p>
                    <div class="hero-actions">
                        <asp:HyperLink runat="server" NavigateUrl="~/contact.aspx" CssClass="btn btn-primary"><i class="fa-solid fa-envelope"></i> Contact Us</asp:HyperLink>
                        <asp:HyperLink runat="server" NavigateUrl="~/services.aspx" CssClass="btn btn-outline">View Services</asp:HyperLink>
                    </div>
                </div>
                <div>
                    <div class="hero-card">
                        <h3>Company Snapshot</h3>
                        <p>We combine modern UI, reliable development practices, and business-focused thinking to create software that is useful today and sustainable tomorrow.</p>
                        <div class="info-list">
                            <div class="info-item">
                                <div class="info-icon"><i class="fa-solid fa-envelope"></i></div>
                                <div>
                                    <h4>Email</h4>
                                    <a href="mailto:info@sansunicsoft.com">info@sansunicsoft.com</a>
                                </div>
                            </div>
                            <div class="info-item">
                                <div class="info-icon"><i class="fa-solid fa-location-dot"></i></div>
                                <div>
                                    <h4>Address</h4>
                                    <p>D1/338, New Kondli, Mayur Vihar Phase 3, New Delhi 110096</p>
                                </div>
                            </div>
                            <div class="info-item">
                                <div class="info-icon"><i class="fa-solid fa-laptop-code"></i></div>
                                <div>
                                    <h4>Focus</h4>
                                    <p>Custom software, web applications, mobile apps, cloud solutions, and support services.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="about-section" aria-labelledby="aboutHeading">
        <div class="container">
            <div class="about-grid">
                <div>
                    <p class="section-tag">Who We Are</p>
                    <h2 class="section-title" id="aboutHeading">A Software Company That Understands Business Needs</h2>
                    <p class="section-desc">
                        An about page should clearly explain who the company is, what it stands for, and how people can get in touch, while making the business feel credible and approachable.
                    </p>
                    <p class="section-desc" style="margin-top:16px;">
                        At Sansunic Software, we believe software should solve real problems, not create new ones. Our work is built around usability, maintainability, and practical outcomes that support daily business operations.
                    </p>
                </div>
                <div class="about-card">
                    <h3 style="font-size:var(--text-lg); margin-bottom:12px;">What clients can expect</h3>
                    <p style="color:var(--color-text-muted);">We aim to deliver software experiences that are clear, reliable, and aligned with long-term business value.</p>
                    <div class="about-points">
                        <div class="about-point">
                            <div class="about-point-icon"><i class="fa-solid fa-check"></i></div>
                            <div>
                                <h4>Business-first thinking</h4>
                                <p>We shape solutions around business workflows and operational goals.</p>
                            </div>
                        </div>
                        <div class="about-point">
                            <div class="about-point-icon"><i class="fa-solid fa-check"></i></div>
                            <div>
                                <h4>Modern and clean interfaces</h4>
                                <p>We focus on UI that looks professional and feels easy to use.</p>
                            </div>
                        </div>
                        <div class="about-point">
                            <div class="about-point-icon"><i class="fa-solid fa-check"></i></div>
                            <div>
                                <h4>Reliable support</h4>
                                <p>We stay available for future enhancements, maintenance, and technical assistance.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="values-section" aria-labelledby="valuesHeading">
        <div class="container">
            <p class="section-tag">Our Approach</p>
            <h2 class="section-title" id="valuesHeading">What Drives Our Work</h2>
            <p class="section-desc">
                Company pages are usually strongest when they communicate the business clearly and include direct contact methods such as email and address in an easy-to-find format.
            </p>
            <div class="values-grid">
                <div class="value-card">
                    <div class="value-icon"><i class="fa-solid fa-lightbulb"></i></div>
                    <h3>Clarity</h3>
                    <p>We keep communication simple and transparent so clients understand both the process and the outcome.</p>
                </div>
                <div class="value-card">
                    <div class="value-icon"><i class="fa-solid fa-layer-group"></i></div>
                    <h3>Structure</h3>
                    <p>We use organized development practices that support quality, scalability, and long-term maintainability.</p>
                </div>
                <div class="value-card">
                    <div class="value-icon"><i class="fa-solid fa-handshake"></i></div>
                    <h3>Commitment</h3>
                    <p>We believe long-term business relationships are built through consistency, reliability, and meaningful support.</p>
                </div>
            </div>
        </div>
    </section>

    <section class="contact-section" aria-labelledby="contactHeading">
        <div class="container">
            <div class="contact-box">
                <div>
                    <p class="section-tag" style="color:#c9d6ff;">Get in Touch</p>
                    <h2 id="contactHeading">Let’s Talk About Your Project</h2>
                    <p>
                        Contact pages and company information sections work best when they make communication direct and straightforward, typically by showing email, address, and other essential contact details clearly.
                    </p>
                    <p style="margin-top:16px; color:rgba(255,255,255,0.84);">
                        If you are planning a website, business application, portal, dashboard, or custom software solution, Sansunic Software is ready to discuss your requirements.
                    </p>
                </div>
                <div class="contact-card">
                    <div class="contact-card-item">
                        <div class="contact-card-icon"><i class="fa-solid fa-envelope"></i></div>
                        <div>
                            <h4>Email Address</h4>
                            <a href="mailto:info@sansunicsoft.com">info@sansunicsoft.com</a>
                        </div>
                    </div>
                    <div class="contact-card-item">
                        <div class="contact-card-icon"><i class="fa-solid fa-location-dot"></i></div>
                        <div>
                            <h4>Office Address</h4>
                            <p>D1/338, New Kondli, Mayur Vihar Phase 3, New Delhi 110096</p>
                        </div>
                    </div>
                    <div class="contact-card-item">
                        <div class="contact-card-icon"><i class="fa-solid fa-globe"></i></div>
                        <div>
                            <h4>Business Focus</h4>
                            <p>Software development, web applications, mobile apps, backend systems, and technical support.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
