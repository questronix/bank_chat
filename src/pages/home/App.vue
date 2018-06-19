<template>
<div class='wrapper'>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<div class='nav'>
        <span class="fa fa-arrow-left"></span>
		<p> ChatBot </p>
		<span id='modalButton' class="fa fa-window-maximize modal-trigger" v-on:click="userInput" ></span>
	</div>

	<div class="messages custom" >

        <div class="left-chat">
            <img class="avatar" src="https://files.fm/thumb_show.php?i=9chmkuaq&view">
            <div class="chat-bg">
                <p>Hi there! </p>
            </div>
        </div>

        <div class="message" v-for="message in messages">

            <div class="right-chat" v-if="message.sender === 'user'">
                <div class="chat-bg">
                    <p>{{ message.text }}</p>
                </div>
                <img class="avatar" src="https://files.fm/thumb_show.php?i=nv26hu44&view">
            </div>

            <div class="left-chat" v-if="message.sender === 'robot'">
                <img class="avatar" src="https://files.fm/thumb_show.php?i=9chmkuaq&view">
                    <div class="chat-bg">
                        <p>{{ message.text }}</p>
                    </div>

                </div>            
            </div>

            <div id="map">
                <p>Your position:</p>
                <p>Lat : {{ position.latitude }} Long : {{ position.longitude }}</p>
            </div>
                
    </div>
                <br>

    <div class="chat-suggestions custom-scroll">
        <a class="chat-suggestions-items" id="nearest-branch" v-on:click="nearestBranch">
            Find Nearest Branch
        </a>
        <a class="chat-suggestions-items" id="nearest-atm" v-on:click="nearestAtm">
            Find Nearest ATM
        </a>
        <a class="chat-suggestions-items" id="store-hours" v-on:click="storeHours">
            Store Hours
        </a>
        <a class="chat-suggestions-items" id="card-info "v-on:click="cardInfo">
            Credit Card Information
        </a>
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


let context = undefined;
export default {
	data(){
	return {
		chatBot: 'ChatBot',
		user: 'You',
		messages: [],
        position:'',
        latitude: '',
        longitude: '',
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
			// if(this.message.match('hi'))
			// 	this.chat('robot', "What can I do for you?");
   //          else if(this.message.match('Find Nearest Branch'))
   //              this.chat('robot', "Locating");
   //          else this.chat('robot', "Sorry, I did not understand that.");
            this.chat('robot', message);

            

		},

        nearestBranch() {
            this.message="Find Nearest Branch"
            this.chat('user', this.message),
            //this.checkIntent(this.message)
            this.message= null
            this.geo_location();

        },

        nearestAtm() {
            this.message="Find Nearest ATM"
            this.chat('user', this.message),
            this.checkIntent(this.message)
            this.message= null

        },

        storeHours() {
            this.message="Store Hours"
            this.chat('user', this.message),
            this.checkIntent(this.message)
            this.message= null

        },

        cardInfo() {
            this.message="Credit Card Information"
            this.chat('user', this.message),
            this.checkIntent(this.message)
            this.message= null

        },
        geo_location() {
            if(navigator.geolocation) {
                var self = this;
                var latitude, longitude;
               navigator.geolocation.getCurrentPosition(function(position){
                self.position = position.coords;
                latitude = position.coords.latitude;
                longitude = position.coords.longitude;
                console.log(latitude,longitude);
              })
            }
          },

       
        


	}
}
</script>



 <style>
 	
 @import 'style.css';
	
    </style>

