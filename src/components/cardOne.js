import Vue from 'vue/dist/vue';

let cardOne = Vue.component('msgOptions', {
  data: () => {
    return {
     
    };
  },
  template: 
  `<div class="left-chat">
        <img class="avatar"  src="https://scontent.fmnl5-1.fna.fbcdn.net/v/t1.0-9/33397319_1722424464512111_6450349599310741504_n.jpg?_nc_cat=0&oh=fd8c31a1b3162ca2da4a9bf9b9a9ce15&oe=5B9090F5">
        <div class="nearest-branch custom-scroll">
            <div class="chat-card">
                <div class="card-content">
                    <h4 class="card-title">
                        {{ }}
                    </h4>
                    <p class="card-text">
                        This is a card text sample, and i should make this very very looong, just like long long man.
                    </p>
                </div>
                <div class="card-btn-bundle">
                    <a href="#" class="card-btn">
                        card button
                    </a>
                    <a href="#" class="card-btn">
                        card button
                    </a>
                </div>
            </div>
           </div>
        </div>`
});

export default cardOne;