// slider dots


const wrapper = document.querySelector('.cards-wrapper');


const dots = document.querySelectorAll('.dot');


let activeDotNum = 0;

dots.forEach((dot, idx) => {
  dot.setAttribute('data-num', idx);
  dot.addEventListener('click', (e) => {
    let clickedDotNum = e.target.dataset.num;
    if (clickedDotNum == activeDotNum) {
      return;
    } else {
      let displayArea = wrapper.parentElement.clientWidth;
      let pixels = -displayArea * clickedDotNum;
      wrapper.style.transform = 'translateX(' + pixels + 'px)';

      dots[activeDotNum].classList.remove('active');

      dots[clickedDotNum].classList.add('active');

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
            
            this.style.background = '#F44356';
            this.style.color = '#fff';
        });
    });
});



// contact us button
const myButton = document.getElementById('myButton');
        const myPopup = document.getElementById('myPopup');
        const overlay = document.getElementById('overlay');

        myButton.addEventListener('click', function () {
            myPopup.classList.add('show');
            overlay.classList.add('show');
        });

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
    