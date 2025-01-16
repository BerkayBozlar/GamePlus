const mediaItems = document.querySelectorAll('.media-item');
const prevBtn = document.querySelector('.prev-btn'); 
const nextBtn = document.querySelector('.next-btn'); 
let currentIndex = 0; 

function updateMedia(index) {
    mediaItems.forEach((item, i) => {
        if (item.tagName === 'IFRAME' || item.tagName === 'VIDEO') {
            const video = item;
            video.src = video.src; 
        }
        item.classList.toggle('active', i === index);
    });
}

prevBtn.addEventListener('click', () => {
    currentIndex = (currentIndex - 1 + mediaItems.length) % mediaItems.length;
    updateMedia(currentIndex);
});

nextBtn.addEventListener('click', () => {
    currentIndex = (currentIndex + 1) % mediaItems.length;
    updateMedia(currentIndex);
});

//Slider için olan kısım
const slider = document.getElementById('rating-slider');
const ratingValue = document.getElementById('rating-value');

slider.addEventListener('input', () => {
    ratingValue.textContent = `${slider.value} / 10`;
    document.getElementById('puan-input').value = slider.value;
});


