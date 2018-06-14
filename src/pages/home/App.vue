<template>

<div class='wrapper'>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<div class='nav'>
		  <span class="fa fa-arrow-left"></span>
		  <p> ChatBot </p>
		  <span id='menu' class="fa fa-window-maximize modal-trigger"></span>
		  </div>
	<div class='container'>
	  
	  </div>

	  <div class="messages">
	  	<div class="left-chat">
            <img class="avatar" src="https://scontent.fmnl5-1.fna.fbcdn.net/v/t1.0-9/33397319_1722424464512111_6450349599310741504_n.jpg?_nc_cat=0&oh=fd8c31a1b3162ca2da4a9bf9b9a9ce15&oe=5B9090F5">
            <div class="chat-bg">
                <p>Hi there! </p>
            </div>
        </div>
        

        
        <div class="message" v-for="message in messages">
        	<div class="right-chat" v-if="message.sender === 'user'">
                    <div class="chat-bg">
                        <p>{{ message.text }}</p>
                    </div>
                </div>
            <div class="left-chat" v-if="message.sender === 'robot'">
                    <img class="avatar" src="https://scontent.fmnl5-1.fna.fbcdn.net/v/t1.0-9/33397319_1722424464512111_6450349599310741504_n.jpg?_nc_cat=0&oh=fd8c31a1b3162ca2da4a9bf9b9a9ce15&oe=5B9090F5">
                    <div class="chat-bg">
                        <p>{{ message.text }}</p>
                    </div>
                </div>
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
export default {
	data(){
	return {
		chatBot: 'ChatBot',
		user: 'You',
		messages: [],
	}

},
	methods: {
		userInput() {
			this.chat('user', this.message),
			this.checkIntent(this.message);
			this.message= null

		},

		chat(sender, message){
			this.messages.push({
				'sender' : sender,
				'text' : message
			})
		},

		checkIntent(message){
			if(this.message.match('hi'))
				this.chat('robot', "What can I do for you?");
            if(this.message.match('Find Nearest Branch'))
                this.chat('robot', "Locating");
            else this.chat('robot', "Sorry, I did not understand that.");
		},

        nearestBranch() {
            this.message="Find Nearest Branch"
            this.chat('user', this.message),
            this.checkIntent(this.message)
            this.message= null

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



	}
}
</script>



 <style type="text/css">
 	.no-padding, body, h1, h2, h3, h4, h5, p, a, i, .misc-text, input[type=text], hr {
 		 padding: 0; }

	.no-margin, body, h1, h2, h3, h4, h5, p, a, i, .misc-text, input[type=text], hr {
  		margin: 0; }

 	body, h1, h2, h3, h4, h5, p, a, i, .misc-text, input[type=text] {
	  font-family: 'Roboto', sans-serif;
	  color: #666; }

 	.wrapper .container navbar {
 		width: 700px;
 	}



    ul {
        list-style-type: none;
	    margin: 0;
	    padding: 0;
	    overflow: hidden;
	    background-color: #14441e;
	    height: 50px;
	    width: 100%;
	    }
  
    li {
	    float: left;
	    color: white;
	    font-family: 'Roboto', sans-serif;
	    font-size: 12;
	    padding: 15px;
		}

	.wrapper {
		overflow: hidden;
		border: solid 1px #bdbdbd;
		height: 100%;
		width: 700px;
		margin-left: 500px;
	}

	.wrapper .nav #menu:hover {

	}

    .wrapper .container {
	    height: 100%;
	    display: flex;
	    justify-content: space-between;

	    flex-direction: column; }
	.wrapper .messages .message{
	    height: 100%;
	    width: 100%;
	    background-color: white;
	    overflow: auto; }

    .wrapper .messages .left-chat {
        min-width: auto;
        margin: 10px;
        display: flex;
        justify-content: flex-start; 


  	}

  	

    .wrapper .messages  .left-chat .avatar {
        width: 35px;
        height: 35px;
        border-radius:60%;
        float: left; }

    .wrapper .messages  .left-chat .avatar:hover {
        width: 40px;
        height: 40px;
        border-radius:60%;
        float: left; 
    	box-shadow: 10px 10px 5px grey;}

    .wrapper .messages  .left-chat .chat-bg, .wrapper .messages  .left-chat .nearest-branch .chat-card, .wrapper .nearest-branch .chat-card {
        max-width: 70%;
        min-width: auto;
        background-color: #f1f1f1;
        padding: 15px;
        border-radius: 15px 50px 30px 5px;
        margin-left: 10px;
        word-break: break-all; }

         .wrapper .messages  .left-chat .chat-bg:hover {
        max-width: 70%;
        min-width: auto;
        background-color: #f1f1f1;
        padding: 15px;
        border-radius: 15px 50px 30px 5px;
        margin-left: 10px;
        word-break: break-all; 
    	box-shadow: 0 3px green;}

    .wrapper .messages .message .left-chat {
        min-width: auto;
        margin: 10px;
        display: flex;
        justify-content: flex-start; 

  	}

    .wrapper .messages .message .left-chat .avatar {
        width: 35px;
        height: 35px;
        border-radius:60%;
        float: left; }

    .wrapper .messages .message .left-chat .avatar:hover {
        width: 40px;
        height: 40px;
        border-radius:60%;
        float: left; 
    	box-shadow: 10px 10px 5px grey;}

    .wrapper .messages .message .left-chat .chat-bg, .wrapper .messages .message .left-chat .nearest-branch .chat-card, .wrapper .nearest-branch .chat-card {
        max-width: 70%;
        min-width: auto;
        background-color: #f1f1f1;
        padding: 15px;
        border-radius: 15px 50px 30px 5px;
        margin-left: 10px;
        word-break: break-all; }

    .wrapper .chat-input {
		border-top: 1px #bdbdbd solid;
		height: 50px;
		background-color: #fff;
		width: 100%;
		display: flex;
		align-items: flex-end; }

    .wrapper .chat-input input {
    	border: none; }

    .wrapper .chat-input span {
    	color: #6cc27b; }

	.wrapper .messages .message .right-chat {
		min-width: auto;
		margin: 10px;
		display: flex;
		justify-content: flex-end; }

  .wrapper .messages .message .right-chat .avatar {
	    width: 35px;
	    height: 35px;
	    border-radius: 50%;
	    margin-top: 5px;
	    float: right; }

  .wrapper .messages .message .right-chat .chat-bg, .wrapper .messages .message .right-chat .nearest-branch .chat-card, .wrapper .nearest-branch .messages .message .right-chat .chat-card {
	    max-width: 70%;
	    min-width: auto;
	    background-color: #f1f1f1;
	    padding: 15px;
	    border-radius: 20px;
	    margin-right: 10px;
	    background-color: #d566ab;
	    color: white;
	    word-break: break-all; }

    .wrapper .messages .message .right-chat p {
    	color: white; }

    .wrapper .nav {
	    width: 100%;
	    height: 50px;
	    background: linear-gradient(-90deg, #6cc27b, green);
	    text-align: center;
	    display: flex;
	    align-items: center;
	    padding: 0 10px;
	    color: white; }

    .wrapper .nav p {
    	color: white;
    	margin-left: 20px; 
    	margin-right: 550px;}

    .wrapper .nearest-branch {
	    display: flex;
	    flex-wrap: nowrap;
	    overflow-x: auto;
	    -webkit-overflow-scrolling: touch; }

    .wrapper .nearest-branch .chat-card {
	      background-color: white !important;
	      border: solid 2px #eee;
	      padding: 0 !important;
	      width: 400px !important;
	      flex: 0 0 auto; }
    .wrapper .nearest-branch .chat-card .card-content {
        padding: 10px; }
        
    .wrapper .nearest-branch .chat-card .card-content .card-text {
          color: #bdbdbd; }
    .wrapper .nearest-branch .chat-card .card-btn-bundle {
        width: 100%;
        display: flex;
        justify-content: center;
        flex-direction: column; }

    .wrapper .nearest-branch .chat-card .card-btn-bundle .card-btn {
          border-top: solid 1px #eee;
          padding: 15px 10px;
          text-decoration: none;
          color: #6cc27b;
          transition: .3s ease-in-out; }
    
    .wrapper .nearest-branch .chat-card .card-btn-bundle .card-btn:nth-last-child(1) {
        border-radius: 15px 0px 30px 5px; }
    
    .wrapper .nearest-branch .chat-card .card-btn-bundle .card-btn:hover {
            background-color: #6cc27b;
            color: white; }

    #sendButton:hover{color:green;}

     /**custom scroll**/
	.custom-scroll::-webkit-scrollbar-track {
	-webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0);
	background-color: rgba(0, 0, 0, 0); }

	.custom-scroll::-webkit-scrollbar {
	width: 7px;
	height: 5px;
	background-color: rgba(0, 0, 0, 0); }

	.custom-scroll::-webkit-scrollbar-thumb {
	-webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0);
	background-color: #bdbdbd;
	border-radius: 100px; }

    .wrapper .chat-suggestions {
	    overflow-x: auto;
	    overflow-y: hidden;
	    white-space: nowrap;
	    width: 100%;
	    -webkit-overflow-scrolling: touch;
	    padding-bottom: 10px; }
    .wrapper .chat-suggestions .chat-suggestions-items {
      display: inline-block;
      margin: 5px;
      padding: 5px 15px;
      border-radius: 20px;
      border: solid 2px #6cc27b;
      color: green;
      font-size: 14px;
      transition: .3s ease-in-out; }


      .wrapper .chat-suggestions .chat-suggestions-items:hover {
        background-color: #6cc27b;
        color: white; }

	
    </style>