import Vue from 'vue/dist/vue';

let nearest-branch = Vue.component('nearest-branch', {
  data: () => {
    return {
      count: 0
    };
  },
  template: '<button v-on:click="count++">You clicked me {{ count }} times.</button>'
});

export default nearest-branch;