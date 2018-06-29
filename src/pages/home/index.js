import Vue from 'vue/dist/vue';
import App from './App.vue'
import button from '../../components/button';
import Api from '../../lib/Api';
import cardOne from '../../components/cardOne';
import imgCard from '../../components/imgCard';
import * as VueGoogleMaps from "vue2-google-maps";
import '../css/style.scss';

Vue.use(VueGoogleMaps, {
  load: {
    key: "AIzaSyBVOGSI8yklJZu1jZp1edsCF4vcyFx4iBY",
    libraries: "places" 
  }
});

new Vue({
  el: '#app',
  render: h => h(App)
})

