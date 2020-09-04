$('#drawerMenu').drawer({ toggle: false });
$('#main-slider').liquidSlider({
    autoSlide: true
});
$('#en').click(function () {
    var opts = { language: "en", pathPrefix: "/lang" };
    $("[data-localize]").localize("homepage", opts);
});
$('#sp').click(function () {
    var opts = { language: "sp", pathPrefix: "/lang" };
    $("[data-localize]").localize("homepage", opts);
});

$('#ch').click(function () {
    var opts = { language: "ch", pathPrefix: "/lang" };
    $("[data-localize]").localize("homepage", opts);
});

function startIntro() {
    var intro = introJs();
    intro.setOptions({
        steps: [
            {
                intro: "Welcome to the BSU Apple iPhone Store!"
            },
            {
                intro: "You can get <b>THE BEST iPhones</b> here."
            },
            {
                element: document.querySelector('#navBar'),
                intro: "This is a navigation bar."
            },
            {
                element: document.querySelector('#main-slider'),
                intro: "View our products here."
            }
            //add two more steps for Home page
        ]
    });
    intro.start();
}

