const myNav = document.querySelector('.navbar-lewagon');
window.onscroll = function () {
    "use strict";
    if (document.body.scrollTop >= 200 ) {
        myNav.classList.add("nav-transparent");
        myNav.classList.remove("nav-colored");
    }
    else {
      myNav.classList.remove("nav-transparent");
      myNav.classList.add("nav-colored");

    }
};

export { myNav };
