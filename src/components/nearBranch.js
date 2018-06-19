import Vue from 'vue/dist/vue';

let nearBranch = Vue.component('nearest-branch', {
  data: () => {
    return {
      count: 0
    };
  },
  template: 
  `<div class="left-chat">
        <img class="avatar" src="https://files.fm/thumb_show.php?i=9chmkuaq&view">
        <div class="nearest-branch custom-scroll">
            <div class="chat-card">
                <div class="card-content">
                    <h4 class="card-title">
                        This is a card title
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

export default nearBranch;