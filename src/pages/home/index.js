import Vue from 'vue/dist/vue';
import App from './App.vue'
import button from '../../components/button';
import Api from '../../lib/Api';


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