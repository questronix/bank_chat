import Vue from 'vue/dist/vue';

let imgCard = Vue.component('imgCard', {
  data: () => {
    return {
  
    };
  },
  template: 
  `<div class="left-chat">
        <img class="avatar"  src="https://scontent.fmnl5-1.fna.fbcdn.net/v/t1.0-9/33397319_1722424464512111_6450349599310741504_n.jpg?_nc_cat=0&oh=fd8c31a1b3162ca2da4a9bf9b9a9ce15&oe=5B9090F5">
        <div class="imgCard">
            <div class="chat-card">
                <div class="card-content">
                    <img id="map" v-bind:src="'https://maps.googleapis.com/maps/api/staticmap?center=' + 
                                    coordinates.lat + ',' + coordinates.long + '&zoom=15&scale=40&markers=icon:http%3A%2F%2Fgoo.gl%2FGjVUSC|' + coordinates.lat + ',' + coordinates.long + '&size=300x250&key=AIzaSyA_rXMrK9f-sVkZ_dyRtcShTjMvLhWY67Y'">
                </div>
            </div>
           </div>
        </div>`
});

export default imgCard;