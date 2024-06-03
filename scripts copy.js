const wrapper = document.querySelector('.cards-wrapper');

// grab the dots
const dots = document.querySelectorAll('.dot');

// the default active dot num which is array[0]
let activeDotNum = 0;

dots.forEach((dot, idx) => {
  // number each dot according to array index
  dot.setAttribute('data-num', idx);

  // add a click event listener to each dot
  dot.addEventListener('click', (e) => {
    let clickedDotNum = e.target.dataset.num;

    // if the dot clicked is already active, then do nothing
    if (clickedDotNum == activeDotNum) {
      return;
    } else {
      // shift the wrapper
      let displayArea = wrapper.parentElement.clientWidth;
      let pixels = -displayArea * clickedDotNum;
      wrapper.style.transform = 'translateX(' + pixels + 'px)';

      // remove the active class from the active dot
      dots[activeDotNum].classList.remove('active');

      // add the active class to the clicked dot
      dots[clickedDotNum].classList.add('active');

      // now set the active dot number to the clicked dot
      activeDotNum = clickedDotNum;
    }
  });
});



function showImage(imageId) {
    const images = document.querySelectorAll('.left .image');
    images.forEach(image => {
        if (image.id === imageId) {
            image.classList.remove('hidden');
        } else {
            image.classList.add('hidden');
        }
    });
}


document.addEventListener('DOMContentLoaded', function() {
    const categoriesButton = document.querySelectorAll('.button-categories-link');
    
    categoriesButton.forEach(function (button) {
        button.addEventListener('click', function (e) {
            e.preventDefault();
            
            // Reset the style of all buttons
            categoriesButton.forEach(function (btn) {
                btn.style.background = '';
                btn.style.color = '';
            });
            
            // Set the style of the clicked button
            this.style.background = '#F44356';
            this.style.color = '#fff';
        });
    });
});



// const myButton = document.getElementById('myButton');
const myPopup = document.getElementById('myPopup');
const closePopup = document.getElementById('closePopup');
const notSubmittedMessage = document.getElementById('notSubmittedMessage');
const contactForm = document.getElementById('contactForm');

myButton.addEventListener('click', function () {
    myPopup.classList.add('show');
});

contactForm.addEventListener('submit', function (event) {
    event.preventDefault();
    notSubmittedMessage.style.display = 'none';

    if (!contactForm.checkValidity()) {
        notSubmittedMessage.style.display = 'block';
    } else {
        contactForm.submit();
        myPopup.classList.remove('show');
    }
});

window.addEventListener('click', function (event) {
    if (event.target == myPopup) {
        myPopup.classList.remove('show');
    }
});