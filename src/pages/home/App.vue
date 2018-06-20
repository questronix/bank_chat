<template>

<div class="wrapper chat">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
            <div id="modal" class="animated modal">
                <div class="modal-content animated">
                    <span class="modal-close fa fa-times"></span>
                    <h4 class="modal-title">This is a modal title.</h4>
                    <p>
                        This is a modal content that needs to be filled up.I'll add more words to this because i want to see how it is with even
                        more content.
                    </p>
                    <div class="modal-footer">
                        <a href="#" class="btn btn-green-minimal modal-close">
                            Okay
                        </a>
                    </div>
                </div>
            </div>
            <div class="nav">
                <span class="fa fa-arrow-left"></span>
                <p>Val</p>
                <span class="fa fa-window-maximize modal-trigger"></span>
             </div>
            <div class="messages custom-scroll" >

                <div class="message" v-for="message in messages">

            <div class="right-chat" v-if="message.sender === 'user'">
                <div class="chat-bg">
                    <p>{{ message.text }}</p>
                </div>
                <img class="avatar" src="https://files.fm/thumb_show.php?i=nv26hu44&view">
            </div>

            <div class="left-chat" v-if="message.sender === 'robot'">
                <img class="avatar" src="https://scontent.fmnl5-1.fna.fbcdn.net/v/t1.0-9/33397319_1722424464512111_6450349599310741504_n.jpg?_nc_cat=0&oh=fd8c31a1b3162ca2da4a9bf9b9a9ce15&oe=5B9090F5">
                    <div class="chat-bg">
                        <p>{{ message.text }}</p>
                    </div>
                </div>            
            </div> 
                </div>
   
            <div class="chat-suggestions custom-scroll">
                <a class="chat-suggestions-items" id="nearest-branch" v-on:click="nearestBranch">
                    Find Nearest Branch</a>
                <a class="chat-suggestions-items" id="nearest-atm" v-on:click="nearestAtm">
                    Find Nearest ATM</a>
                <a class="chat-suggestions-items" id="bank-hours" v-on:click="storeHours">
                    Bank Hours</a>
                <a class="chat-suggestions-items" id="card-info "v-on:click="cardInfo">
                    Credit Card Information</a>
            </div>

        <div class="chat-input" style="justify-content:space-around; align-items:center;">
            <div style="width:100%">
                <input v-model="message" v-on:keyup.enter="userInput" type="text" placeholder="Aa" style="padding:5px 8px; outline:none; width:100%; " />
            </div>
            <div style="margin:0px 20px;">
                <span id='sendButton'  v-model="message" v-on:click="userInput" type="text" class="fa fa-paper-plane green-text"></span>
            </div>
        </div>
    </div>            

</template>

<script>
import Api from '../../lib/Api';
import cardOne from '../../components/cardOne';
import imgCard from '../../components/imgCard';

let context = undefined;
export default {
  
    data(){
        return {
            chatBot: 'ChatBot',
            user: 'You',
            messages: [],
            message: '',
        }
    },
    methods: {
        userInput() {
            this.chat('user', this.message);
            Api.post('chat', {
                context: context || {},
                input: {
                    text: this.message || ""
                }
            }).then(data=>{
              console.log(data);
                context = data.body.context
                this.message= null;
                this.checkIntent(data.body.output.text.join('\n'));
            }).catch(error=>{
              console.log(error);
                this.message= null;
            });
        },

        chat(sender, message){
            this.messages.push({
                'sender' : sender,
                'text' : message
            })
        },

        checkIntent(message){
            this.chat('robot', message);
        },

        nearestBranch() {
            this.message="Find Nearest Branch"
            this.chat('user', this.message),
            Api.post('chat', {
                context: context || {},
                input: {
                    text: this.message || ""
                }
            }).then(data=>{
              console.log(data);
                context = data.body.context
                this.geoLocation();
                this.message = null;
                this.checkIntent(data.body.output.text.join('\n'));
            }).catch(error=>{
              console.log(error);
                this.message = null;
            });
            
        },

        nearestAtm() {
            this.message="Find Nearest ATM"
            this.chat('user', this.message),
            Api.post('chat', {
                context: context || {},
                input: {
                    text: this.message || ""
                }
            }).then(data=>{
              console.log(data);
                context = data.body.context
                this.geoLocation();
                this.message = null;
                this.checkIntent(data.body.output.text.join('\n'));
            }).catch(error=>{
              console.log(error);
                this.message = null;
            });

        },

        storeHours() {
            this.message="Bank Hours"
            this.chat('user', this.message),
            Api.post('chat', {
                context: context || {},
                input: {
                    text: this.message || ""
                }
            }).then(data=>{
              console.log(data);
                context = data.body.context
                this.geoLocation();
                this.message = null;
                this.checkIntent(data.body.output.text.join('\n'));
            }).catch(error=>{
              console.log(error);
                this.message = null;
            });

        },

        cardInfo() {
            this.message="Credit Card Information"
            this.chat('user', this.message),
            Api.post('chat', {
                context: context || {},
                input: {
                    text: this.message || ""
                }
            }).then(data=>{
              console.log(data);
                context = data.body.context
                this.geoLocation();
                this.message = null;
                this.checkIntent(data.body.output.text.join('\n'));
            }).catch(error=>{
              console.log(error);
                this.message = null;
            });

        },

        geoLocation() {
            var self = this;
            var latitude, longitude;
            if(navigator.geolocation) {
               navigator.geolocation.getCurrentPosition(function(position){
                self.position = position.coords;
                latitude = position.coords.latitude;
                longitude = position.coords.longitude;
                console.log(latitude,longitude);

              })
            }
        },
    },
    mounted: function () {          //called after whole page has loaded
        this.$nextTick(function () {
            console.log('test');
            Api.post('chat', {
                context: context || {},
                input: {
                    text:""
                }
            }).then(data=>{
              console.log(data);
                context = data.body.context
                this.message= null;
                this.checkIntent(data.body.output.text.join('\n'));
            }).catch(error=>{
              console.log(error);
                this.message= null;
            });
        })
    }
}
</script>




 <style>
 @import '../css/style.css';
 @import '../css/style.scss';
</style>

