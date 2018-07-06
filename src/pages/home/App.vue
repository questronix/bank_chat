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
            <div class="messages custom-scroll " >
                <div class="message " v-for="(message, index) in messages" :key="index">
                    
                    <div class="right-chat" v-if="message.sender === 'user'">
                        <div class="chat-bg">
                            <p>{{ message.text }}</p>
                        </div>
                        <img class="avatar" src="https://files.fm/thumb_show.php?i=nv26hu44&view">
                    </div>

                    <div class="left-chat" v-if="message.sender === 'robot'">
                    <img class="avatar" src="https://scontent.fmnl5-1.fna.fbcdn.net/v/t1.0-9/33397319_1722424464512111_6450349599310741504_n.jpg?_nc_cat=0&oh=fd8c31a1b3162ca2da4a9bf9b9a9ce15&oe=5B9090F5">
                        <div class="nearest-branch" v-if="message.text === 'Which location would you like to use?' ">
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

                        <div class="chat-card-bundle custom-scroll" v-else-if="message.data !== null">
                            
                            <div class="chat-card"  v-for="(coordinates, index) in message.data" :key="index">

                                <div class="card-content">
                                    
                                    <img id="map" v-bind:src="`https://maps.googleapis.com/maps/api/staticmap?center=${coordinates.lat},${coordinates.long}&zoom=20&scale=40&markers=color:red%7C${coordinates.lat},${coordinates.long}&size=280x250&key=AIzaSyBVOGSI8yklJZu1jZp1edsCF4vcyFx4iBY`">
                                    <br><br>
                                     <span class="style-green">  Open </span>
                                    
                                 <br><br>
                                 <div class="card-btn-bundle">
                                    <div class="card-btn">
                                       {{ coordinates.address }} <br>
                                       Operating Hours: {{ coordinates.opening }} - {{ coordinates.closing }}

                                    </div>
                                </div>
                            </div>
                           

                            </div>
                        </div>
                     
                        <div v-else class="chat-bg">
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
                <a class="chat-suggestions-items" id="card-info" v-on:click="cardInfo">
                    Credit Card Information</a>
            </div>

        <div class="chat-input" style="justify-content:space-around; align-items:center;">
            <div style="width:100%">
                <input v-model="message" v-on:keyup.enter="userInput" type="text" placeholder="Aa" style="padding:5px 8px; outline:none; width:100%; " />
            </div>
            <div style="margin:0px 20px;">
                <span id='sendButton' v-on:click="userInput" type="text" class="fa fa-paper-plane green-text"></span>
            </div>
        </div>
    </div>            

</template>

<script>
import Api from '../../lib/Api';
//import cardOne from '../../components/cardOne';
import imgCard from '../../components/imgCard';
let longitude = 0, latitude = 0;
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
        action: '',
        latLongs: [],
        coordinates: '',
        arrayLength: '',
        alldata: []
    }
},
    methods: {
        //normal inputs only, typed by the user.
        userInput() {
            this.chat('user', this.message);
            Api.post('/', {
                context: context || {},
                input: {
                    text: this.message || ""
                }
            }).then(data=>{
                this.message= null;
                context = data.context;
                this.checkIntent(data.output.text.join('\n'), null);
            }).catch(error=>{
              console.log(error);
                this.message= null;
            });
        },


         setPlace(place) {
          var self = this;
          self.position = place.geometry.location;
          context.action = this.action;
          context.lat = self.position.lat();
          context.lng = self.position.lng();
          let options = {
              context: context || {},
              input:  {
                    text: place.name || ""
                }
          };
           this.chat('user', place.name, null);
          Api.post('/', options).then(data=>{
            console.log('Result: ' , data);
            console.log('data: ' , data.data);
            console.log('Options: ' , options);
            for(var i=0; i < data.data.length; i++){
                this.latLongs.push({
                'lat': data.data[i].latitude,
                'long': data.data[i].longitude,
                'address': data.data[i].address,
                'opening' : data.data[i].opening,
                'closing' : data.data[i].closing,
                
                });
            }
           
            this.checkIntent(data.output.text.join('\n'),  null);
            this.arrayLength = data.data.length;
            if(this.arrayLength>0){
                this.checkIntent(data.output.text.join('\n'),  this.latLongs);
            }
            else{
                this.checkIntent("Sorry, there are no branches near you.",  null);
            }

            Api.post('/', {
                context: context || {},
                input: {
                    text: ""
                }
            }).then(data=>{
                context = data.context;
                this.message= null;
            }).catch(error=>{
                console.log(error);
                this.message= null;
            });
            this.latLongs = [];
          }).catch(error=>{
            console.log(error);
                this.message= null;
            });
          
        },

        setCurrentPlace(latitude,longitude) {
          var self = this;
           self.chat('user', self.message, null)
          if(this.action=== "WhichLocation"){
            context.action = "GetNearestBranchLatLong";
          }else{
            context.action = "GetNearestATMLatLong"
          }
          context.lat = latitude;
          context.lng = longitude;
          let options = {
              context: context || {},
              input:{
                text: self.message
              }
          };
         
          Api.post('/', options).then(data=>{
            for(var i=0; i < data.data.length; i++){
                this.latLongs.push({
                'lat': data.data[i].latitude,
                'long': data.data[i].longitude,
                'address': data.data[i].address,
                'opening' : data.data[i].opening,
                'closing' : data.data[i].closing,
                
                });
            }
            
            this.arrayLength = data.data.length;
            this.action = data.context.action;
            this.chat('robot', data.output.text.join('\n'), null);
            if(this.arrayLength>0){
                this.checkIntent(data.output.text.join('\n'),  this.latLongs);
            }
            else{
                this.checkIntent("Sorry, there are no branches near you.",  null);
            }
            
            Api.post('/', {
                context: context || {},
                input: {
                    text: ""
                }
            }).then(data=>{
                context = data.context;
                this.message= null;
            }).catch(error=>{
                console.log(error);
                this.message= null;
            });
        
            this.alldata.push(this.latLongs);
            this.latLongs = [];
            
          }).catch(error=>{
            console.log(error);
                this.message= null;
            });
          
        },
        defaultButtons(message){
            this.chat('user', message);
            Api.post('/', {
                context: context || {},
                input: {
                    text: message || ""
                }
            }).then(data=>{
                context = data.context;
                this.message= null;
                this.checkIntent(data.output.text.join('\n'), null);
                this.action = data.context.action;
            }).catch(error=>{
              console.log(error);
              this.message= null;
            });
        },
        chat(sender, message, array){
            this.messages.push({
                'sender' : sender,
                'text' : message,
                'data' : array,
            })
        },
        checkIntent(message, array){
            this.chat('robot', message, array);
            
        },
        nearestBranch() {
            this.message="Find Nearest Branch"
            this.defaultButtons(this.message);
            // this.nearestBranches.push({'lat':latitude, 'long':longitude});
        },
        nearestAtm() {
            this.message="Find Nearest ATM"
            this.defaultButtons(this.message);
            // this.nearestAtms.push({'lat':latitude, 'long':longitude});
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
            this.geoLocation();
        },

        inputNo() {
            this.message= place;
            this.userInput(this.message);
        },
        geoLocation() {
            var self = this;
            var latitude, longitude;
            if(navigator.geolocation) {
               navigator.geolocation.getCurrentPosition(function(position){
                self.position = position.coords;
                latitude = position.coords.latitude;
                longitude = position.coords.longitude;
                self.setCurrentPlace(latitude, longitude);

              })
            
            }
        },
    },
    mounted: function() {
        Api.post('/', {
        context: context || {},
            input: {
                text: ""
            }
        }).then(data=>{
            context = data.context;
            this.message= null;
            this.checkIntent(data.output.text.join('\n'), null);
        }).catch(error=>{
            console.log(error);
            this.message= null;
        });
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
