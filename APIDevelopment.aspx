<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="APIDevelopment.aspx.cs" Inherits="SANSUNIC.APIDevelopment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .api-hero-premium {
    padding: 100px 0;
    background: linear-gradient(135deg, #020617, #0f172a);
    color: white;
}

.gradient-text {
    background: linear-gradient(135deg, #38bdf8, #9333ea);
    -webkit-background-clip: text;
    color: transparent;
}

.api-hero-img {
    border-radius: 20px;
}

/* HUMAN SECTION */
.api-human {
    padding: 70px 0;
    background: #020617;
    color: #cbd5e1;
}

/* SERVICES */
.api-services-premium {
    padding: 80px 0;
    background: linear-gradient(135deg, #0f172a, #1e293b);
}

.api-card-premium {
    background: rgba(255,255,255,0.05);
    padding: 30px;
    border-radius: 15px;
    transition: 0.3s;
}

.api-card-premium:hover {
    transform: translateY(-10px);
    border: 1px solid #38bdf8;
}

/* WHY */
.api-why-premium {
    padding: 80px 0;
    background: #020617;
    color: white;
}

.api-list li {
    margin-bottom: 10px;
}

/* PROCESS */
.api-process-premium {
    padding: 80px 0;
}

.process-box {
    padding: 20px;
    background: #1e293b;
    border-radius: 10px;
    color: white;
}

/* CTA */
.api-cta-premium {
    padding: 90px 0;
    background: linear-gradient(135deg, #2563eb, #7c3aed);
    color: white;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="api-hero-premium">
<div class="container">
<div class="row align-items-center">

<div class="col-md-6">

<h1>
We Build APIs That Actually 
<span class="gradient-text">Work For Your Business</span>
</h1>

<p class="lead mt-4">
Most APIs fail not because of code, but because they don’t understand the business.
We design APIs that are reliable, scalable, and built around real-world use cases — not just documentation.
</p>

<div class="mt-4">
<a href="Contact.aspx" class="btn btn-main">Start a Conversation</a>
</div>

</div>

<div class="col-md-6 text-center">
<img src="https://images.unsplash.com/photo-1558494949-ef010cbdcc31"
class="img-fluid api-hero-img" />
</div>

</div>
</div>
</section>
    <section class="api-human">
<div class="container text-center">

<h2>APIs Are Not Just Code. They Are Business Infrastructure.</h2>

<p>
When systems don’t talk properly, businesses slow down.
Manual work increases, errors happen, and growth becomes difficult.
</p>

<p>
We solve this by building APIs that connect everything seamlessly —
your apps, your data, your customers, and your operations.
</p>

</div>
</section>
    <section class="api-services-premium">
<div class="container">

<div class="row g-4">

<div class="col-md-4">
<div class="api-card-premium">
<h4>Custom API Development</h4>
<p>
We build APIs that match your exact business logic — not generic templates.
Everything is structured, secure, and scalable from day one.
</p>
</div>
</div>

<div class="col-md-4">
<div class="api-card-premium">
<h4>Third-Party Integrations</h4>
<p>
Payment gateways, CRMs, ERP systems — we connect everything smoothly
so your business runs without friction.
</p>
</div>
</div>

<div class="col-md-4">
<div class="api-card-premium">
<h4>Performance Optimization</h4>
<p>
Fast APIs are critical. We optimize response time, caching,
and scalability for real-world usage.
</p>
</div>
</div>

</div>

</div>
</section>

    <section class="api-why-premium">
<div class="container">

<div class="row align-items-center">

<div class="col-md-6">
<h2>Why Our APIs Actually Work in Production</h2>

<ul class="api-list">
<li>Designed for real business workflows</li>
<li>Security-first architecture</li>
<li>Scalable for future growth</li>
<li>Clean, maintainable codebase</li>
</ul>

</div>

<div class="col-md-6">
<img src="https://images.unsplash.com/photo-1518779578993-ec3579fee39f"
class="img-fluid rounded" />
</div>

</div>

</div>
</section>

    <section class="api-process-premium">
<div class="container text-center">

<h2>How We Deliver Reliable APIs</h2>

<div class="row mt-5">

<div class="col-md-3">
<div class="process-box">Understand</div>
</div>

<div class="col-md-3">
<div class="process-box">Design</div>
</div>

<div class="col-md-3">
<div class="process-box">Develop</div>
</div>

<div class="col-md-3">
<div class="process-box">Deploy</div>
</div>

</div>

</div>
</section>

    <section class="api-cta-premium text-center">
<div class="container">

<h2>Let’s Build Something That Actually Scales</h2>

<p>
If your systems are disconnected or slowing your growth,
it’s time to fix the foundation.
</p>

<a href="Contact.aspx" class="btn btn-light">Contact Our Team</a>

</div>
</section>
</asp:Content>
