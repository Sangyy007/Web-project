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




const myButton = document.getElementById('myButton');
        const myPopup = document.getElementById('myPopup');
        const overlay = document.getElementById('overlay');

        // Show popup and overlay when the button is clicked
        myButton.addEventListener('click', function () {
            myPopup.classList.add('show');
            overlay.classList.add('show');
        });

        // Prevent popup from closing when clicking outside of it
        overlay.addEventListener('click', function (event) {
            myPopup.classList.remove('show');
            overlay.classList.remove('show');
        });


document.addEventListener('DOMContentLoaded', function() {
    const workEmailInput = document.getElementById('work-email');
    
    workEmailInput.addEventListener('input', function() {
        if (this.value) {
        this.classList.add('has-value');
        } else {
        this.classList.remove('has-value');
        }
    });
    });
    