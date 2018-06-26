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
                <p>Chassi</p>
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
                        <div class="left-chat" v-if="message.text === 'Which location would you like to use?' ">
                        <div class="nearest-branch custom-scroll">
                            <div class="cardOne">
                                <div class="chat-card">
                                    <div class="card-content">
                                        <p class="card-text">
                                            {{ message.text }}
                                        </p>
                                    </div>
                                    <div class="card-btn-bundle">
                                        <a href="#" class="card-btn" v-on:click="inputYes">
                                            Use my current location
                                        </a>
                                         <gmap-autocomplete class="card-btn"
                                            @place_changed="setPlace"> 
                                            </gmap-autocomplete>
                                    </div>
                                </div>
                            </div>
                        </div> 
                    </div>
                        <div v-else class="chat-bg">
                            <p>{{ message.text }}</p>
                        </div>
                    </div> 
           
                    <div class="left-chat" v-if="message.text === 'Please wait while we process your location.'">
                    <img class="avatar"  src="https://scontent.fmnl5-1.fna.fbcdn.net/v/t1.0-9/33397319_1722424464512111_6450349599310741504_n.jpg?_nc_cat=0&oh=fd8c31a1b3162ca2da4a9bf9b9a9ce15&oe=5B9090F5">
                        <div class="imgCard">
                            <div class="chat-card">
                                <div class="card-content">
                                    <img id="map" v-bind:src="'https://maps.googleapis.com/maps/api/staticmap?center=' + 
                                    position.latitude + ',' + position.longitude + '&zoom=15&scale=40&markers=icon:http%3A%2F%2Fgoo.gl%2FGjVUSC|' + position.latitude + ',' + position.longitude + '&size=300x250&key=AIzaSyA_rXMrK9f-sVkZ_dyRtcShTjMvLhWY67Y'">
                                </div>
                            </div>
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


            
let longitude, latitude = 0;
let context = undefined;
let currentPlace = undefined;
export default {
    name: 'google-map',
    props: ['name'],
    data(){
    return {
        chatBot: 'ChatBot',
        user: 'You',
        messages: [],
        message: '',
        nearestBranches: [],
        nearestAtms: [],
        branchCoordinates: {},

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
                context = data.body.context;
                this.message= null;
                this.checkIntent(data.body.output.text.join('\n'));
            }).catch(error=>{
              console.log(error);
                this.message= null;
            });
        },

         setPlace(place) {
          this.currentPlace = place.name;
          console.log("hello");
          this.defaultButtons(place.name);
          console.log(place.geometry.location.lat());
          var self = this;
          self.position = place.geometry.location;
          
          
          
        },

        defaultButtons(message){
            console.log(message);
            this.chat('user', message);
            Api.post('chat', {
                context: context || {},
                input: {
                    text: message || ""
                }
            }).then(data=>{
              console.log(data);
                context = data.body.context
                this.message= null;
                this.geoLocation();
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

        setMap(){
           document.getElementById('map').src = `https://maps.googleapis.com/maps/api/staticmap?center=${this.latitude},${this.longitude}&zoom=15&scale=40&markers=icon:http%3A%2F%2Fgoo.gl%2FGjVUSC|${this.latitude}, ${this.longitude}&size=500x500&key=AIzaSyA_rXMrK9f-sVkZ_dyRtcShTjMvLhWY67Y`
        
        },

        checkIntent(message){
            this.chat('robot', message);
            
        },

        nearestBranch() {
            this.message="Find Nearest Branch"
            this.defaultButtons(this.message);
            this.nearestBranches.push({'lat':latitude, 'long':longitude});
        },

        nearestAtm() {
            this.message="Find Nearest ATM"
            this.defaultButtons(this.message);
            this.nearestAtms.push({'lat':latitude, 'long':longitude});
        },

        storeHours() {
            this.message="Bank Hours"
            this.defaultButtons(this.message);
        },

        cardInfo() {
            this.message="Credit Card Information"
            this.defaultButtons(this.message);
        },

        inputYes() {
            this.message="Use my current location"
            this.userInput(this.message);
        },

        inputNo() {
            this.message= place;
            this.userInput(this.message);
        },


        geoLocation() {
            var self = this;
            if(navigator.geolocation) {
               navigator.geolocation.getCurrentPosition(
                    displayLocationInfo,
                    handleLocationError,
                    {enableHighAccuracy: true, maximumAge: 1500000, timeout: 0}
                );

                function displayLocationInfo(position){
                    self.position = position.coords;
                    latitude = position.coords.latitude;
                    longitude = position.coords.longitude;
                    
                }

                function handleLocationError(error) {
                    switch (error.code) {
                        case 3:
                            displayLocationInfo({ coords: { longitude: 33.631839, latitude: 27.380583 } });
                            navigator.geolocation.getCurrentPosition(displayLocationInfo, handleLocationError);
                            break;
                    }
                }
            }
        },   
    },
    mounted: function() {
        this.$nextTick(function (){
            Api.post('chat', {
            context: context || {},
                input: {
                    text: ""
                }
            }).then(data=>{
                console.log(data);
                context = data.body.context;
                this.message= null;
                this.checkIntent(data.body.output.text.join('\n'));
            }).catch(error=>{
                console.log(error);
                this.message= null;
            });
        })
    },
}

</script>




 <style>
 @import '../css/style.css';
 @import '../css/style.scss';

.google-map {
  width: 800px;
  height: 600px;
  margin: 0 auto;
  background: gray;
}
    
    </style>


