<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="SANSUNIC.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
      .card-hover {
    transition: transform 0.3s ease, box-shadow 0.3s ease, border-color 0.3s ease;
    position: relative;
    z-index: 1;
}

.card-hover:hover {
    transform: translateY(-8px);
    box-shadow: 0 20px 40px rgba(0,0,0,0.15);
    border-color: #38bdf8;
}

/* fix: text hide na ho */
.card-hover * {
    position: relative;
    z-index: 2;
}
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="bg-slate-50 text-slate-900">

    <!-- HERO SECTION -->
    <section class="relative overflow-hidden bg-slate-900 text-white">
        
        <div class="absolute inset-0">
            <img src="img/saslog.png" alt="Contact Background" class="h-full w-full object-cover" />
            <div class="absolute inset-0 bg-slate-950/75"></div>
            <div class="absolute inset-0 bg-[radial-gradient(circle_at_top_left,rgba(20,184,166,0.18),transparent_28%),radial-gradient(circle_at_bottom_right,rgba(249,115,22,0.14),transparent_25%)]"></div>
        </div>

        <div class="relative z-10 max-w-5xl mx-auto px-6 py-28 md:py-12 text-center">
            <div class="inline-flex items-center gap-2 rounded-full border border-teal-400/20 bg-teal-400/10 px-5 py-2 text-sm font-medium text-teal-200 backdrop-blur-md">
                <span class="text-teal-300">●</span>
                Contact Sasunic Software
            </div>

           <h1 class="mt-6 text-4xl md:text-6xl font-extrabold leading-tight">
    Let’s discuss your
    <span class="bg-gradient-to-r from-blue-400 to-cyan-400 bg-clip-text text-transparent">
        next digital initiative
    </span>
</h1>

<p class="mt-6 max-w-3xl mx-auto text-lg leading-8 text-slate-300">
    At Sansunic Software, we partner with organizations to design and deliver reliable, scalable, 
    and high-performance digital solutions. Whether you are planning a new system, modernizing existing 
    infrastructure, or implementing intelligent automation, our team is committed to delivering results 
    aligned with your business objectives.
</p>

        </div>
    </section>

    <!-- CONTACT SECTION -->
    <section class="py-12">
        <div class="max-w-7xl mx-auto px-6">
            <div class="grid lg:grid-cols-2 gap-8 items-stretch">

                <!-- LEFT CARD -->
                <div class="h-full">
                    <div class="h-full rounded-3xl border border-slate-200 bg-white p-8 md:p-10 shadow-[0_18px_45px_rgba(15,23,42,0.08)] flex flex-col card-hover">               
                        <div class="inline-flex items-center rounded-full bg-teal-500/10 px-4 py-2 text-sm font-semibold text-teal-700 w-fit">
                            GET IN TOUCH
                        </div>

                        <h2 class="mt-5 text-3xl md:text-4xl font-extrabold text-slate-900 leading-tight">
                            We’d love to hear from you
                        </h2>

                        <p class="mt-4 text-slate-600 leading-8">
                            Tell us about your requirements, business challenges, or software idea.
                            We focus on practical digital solutions that are modern, scalable, and built for real users.
                        </p>

                        <div class="mt-8 grid sm:grid-cols-2 gap-4 flex-grow">

                        <div class="rounded-2xl border border-slate-200 bg-slate-50 p-5 card-hover">
                            <div class="flex h-12 w-12 items-center justify-center rounded-2xl bg-orange-100 text-orange-600 text-lg">
                                    <i class="fas fa-envelope"></i>
                                </div>
                                <h3 class="mt-4 text-lg font-bold text-slate-900">Email us</h3>
                                <p class="mt-2 text-sm leading-7 text-slate-600">
                                    info@sansunicsoft.com<br />
                                    support@sansunicsoft.com
                                </p>
                            </div>

                                <div class="rounded-2xl border border-slate-200 bg-slate-50 p-5 card-hover">                             
                                    <div class="flex h-12 w-12 items-center justify-center rounded-2xl bg-sky-100 text-sky-700 text-lg">
                                    <i class="fas fa-map-marker-alt"></i>
                                </div>
                                <h3 class="mt-4 text-lg font-bold text-slate-900">Office</h3>
                                <p class="mt-2 text-sm leading-7 text-slate-600">
                                    D1/338, Block D, New Kondli<br />
                                    Mayur Vihar Phase 3, New Delhi - 110096
                                </p>
                            </div>

                        <div class="rounded-2xl border border-slate-200 bg-slate-50 p-5 card-hover">
                                <div class="flex h-12 w-12 items-center justify-center rounded-2xl bg-violet-100 text-violet-700 text-lg">
                                    <i class="fas fa-clock"></i>
                                </div>
                                <h3 class="mt-4 text-lg font-bold text-slate-900">Working hours</h3>
                                <p class="mt-2 text-sm leading-7 text-slate-600">
                                    Monday - Saturday<br />
                                    09:00 AM - 06:00 PM
                                </p>
                            </div>

                        </div>
                    </div>
                </div>

                <!-- RIGHT CARD -->
                <div class="h-full">
                    <div class="h-full rounded-3xl border border-slate-200 bg-white p-8 md:p-10 shadow-[0_18px_45px_rgba(15,23,42,0.08)] flex flex-col card-hover">                    
                        <div class="inline-flex items-center rounded-full bg-sky-500/10 px-4 py-2 text-sm font-semibold text-sky-700 w-fit">
                            SEND MESSAGE
                        </div>

                        <h2 class="mt-5 text-3xl md:text-4xl font-extrabold text-slate-900 leading-tight">
                            Tell us what you need
                        </h2>

                        <p class="mt-4 text-slate-600 leading-8">
                            Share your basic details and project subject, and our team will connect with you soon.
                        </p>

                        <div class="mt-8 space-y-5 flex-grow">
                            <div>
                                <label class="mb-2 block text-sm font-semibold text-slate-800">Name</label>
                                <input type="text" placeholder="Enter your name"
                                    class="w-full rounded-2xl border border-slate-300 bg-slate-50 px-4 py-3 text-slate-900 outline-none transition focus:border-teal-500 focus:ring-4 focus:ring-teal-500/10" />
                            </div>

                            <div>
                                <label class="mb-2 block text-sm font-semibold text-slate-800">Email</label>
                                <input type="email" placeholder="Enter your email"
                                    class="w-full rounded-2xl border border-slate-300 bg-slate-50 px-4 py-3 text-slate-900 outline-none transition focus:border-teal-500 focus:ring-4 focus:ring-teal-500/10" />
                            </div>

                            <div>
                                <label class="mb-2 block text-sm font-semibold text-slate-800">Subject</label>
                                <textarea rows="6" placeholder="Write your subject or message"
                                    class="w-full rounded-2xl border border-slate-300 bg-slate-50 px-4 py-3 text-slate-900 outline-none transition focus:border-teal-500 focus:ring-4 focus:ring-teal-500/10"></textarea>
                            </div>

                            <div class="pt-2">
                                <button type="button"
                                    class="inline-flex w-full items-center justify-center rounded-2xl bg-gradient-to-r from-teal-500 to-sky-500 px-6 py-4 text-base font-semibold text-white shadow-lg shadow-teal-500/20 transition duration-300 hover:-translate-y-1">
                                    Send Message
                                </button>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
     <!-- MAP -->
    <section class="pb-24">
        <div class="max-w-7xl mx-auto px-6">
            <div class="overflow-hidden rounded-3xl border border-slate-200 bg-white shadow-[0_18px_45px_rgba(15,23,42,0.08)]">
                <div class="flex flex-col md:flex-row md:items-center md:justify-between gap-4 border-b border-slate-200 px-8 py-6">
                    <div>
                        <h3 class="text-2xl font-bold text-slate-900">Our location</h3>
                        <p class="mt-2 text-slate-600 leading-7">
                            Visit our office or schedule a meeting to discuss your digital transformation goals.
                        </p>
                    </div>
                    <a href="https://www.google.com/maps?q=D1/338+New+Kondli+Delhi+110096" target="_blank" rel="noopener noreferrer"
                       class="inline-flex items-center justify-center rounded-full border border-slate-300 bg-white px-6 py-3 font-semibold text-slate-900 transition duration-300 hover:bg-slate-50">
                        Open in Google Maps
                    </a>
                </div>
                <div>
                <iframe
                  src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3502.805767370766!2d77.3294938745717!3d28.605603185304833!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390ce4e1f8ac77cd%3A0x4503c03e90c418dc!2sD1%2F338%2C%20Block%20D%2C%20New%20Kondli%2C%20Kondli%2C%20New%20Delhi%2C%20Delhi%2C%20110096!5e0!3m2!1sen!2sin!4v1775629017002!5m2!1sen!2sin"      
                    class="h-[420px] w-full"
                    loading="lazy"
                    referrerpolicy="no-referrer-when-downgrade">
                </iframe>
               </div>
            </div>
        </div>
    </section>
  
</div>

</asp:Content>
