import Vue from 'vue/dist/vue';
import App from './App.vue'
import button from '../../components/button';
import Api from '../../lib/Api';
import cardOne from '../../components/cardOne';


Api.post('login', {
  username: 'kenster',
  password: 'P@ssw0rd'
}).then(data=>{
  console.log(data);
}).catch(error=>{
  console.log(error);
});

new Vue({
  el: '#app',
  render: h => h(App)
})