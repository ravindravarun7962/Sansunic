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

