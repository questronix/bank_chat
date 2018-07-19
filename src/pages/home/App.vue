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
                    </div></div></div>
                   

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
                        <img class="avatar" src="https://i.imgur.com/UaEENFi.jpg">
                    </div>

                    <div class="left-chat" v-if="message.sender === 'robot'">
                    <img class="avatar" src="https://i.imgur.com/s3dQFPp.jpg">
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
                                    </div></div></div>
                        </div> 

                         <div class="credCards" v-else-if="message.currentAction === 'useLoanCalculator'">            
                            <div class="chat-bg">
                                {{ message.text }}
                            </div>     
                            <br>                           
                            <div class="chat-card-bundle custom-scroll">    
                                <div class="chat-card">
                                    
                                    <div class="card-content">
                                         <span class="style-red">  Loan Calculator </span>
                                        <br><br> 
                                        Loan Amount
                                        <input v-model="loanAmount" placeholder="Enter amount here..">
                                        <br><br>
                                         Loan Term
                                        <input v-model="loanTerm" placeholder="Enter years here..">
                                        <br><br>
                                        Rate Fixing Period
                                        <select v-model="fixAmount" >
                                        <option disabled value=""> Rate Fixing Period</option>
                                        <option value="0.06">1 year</option>
                                        <option  value="0.065">2 years</option>
                                        <option value="0.065">3 years</option>
                                        <option value="0.07">4 years</option>
                                        <option value="0.07">5 years</option>
                                        <option value="0.09">10 years</option>
                                        </select>
                                         <br><br>
                                          <div class="chat-suggestions">
                                         <a class="chat-suggestions-items" id="submit" v-on:click="calculatorFormula">
                                         Submit</a></div>
                                                                      
                                 </div>
                                </div>
                            </div>
                        </div>

                        <div class="credCards" v-else-if="message.currentAction === 'calcAnswer'">
                              <div class="chat-bg">
                                PHP {{ message.text }} each month. 
                            </div>     <br>
                             <div class="chat-bg">
                                The result represents your Equal Monthly Amortization fixed for 1 year and is subject to annual repricing thereafter.
                            </div>     
                        </div>

                         <div class="credCards" v-else-if="message.currentAction === 'getNearestBranchLatLong' || message.currentAction === 'getNearestATMLatLong' ||message.currentAction === 'getNearestBranchPlace' || message.currentAction === 'getNearestATMPlace'">            
                                        <div class="chat-bg">
                                            {{ message.text }}
                                        </div>     
                                        <br>                           
                                        <div class="chat-card-bundle custom-scroll">    
                                            <div class="chat-card" v-for="(coordinates, index) in message.data" :key="index">
                                                <div class="card-content">
                                                    <img id="map" v-bind:src="`https://maps.googleapis.com/maps/api/staticmap?center=${coordinates.lat},${coordinates.long}&zoom=20&scale=40&markers=color:red%7C${coordinates.lat},${coordinates.long}&size=250x250&key=AIzaSyBVOGSI8yklJZu1jZp1edsCF4vcyFx4iBY`">
                                                <br><br>
                                                    <h4 class="card-title">
                                                       {{coordinates.name}}
                                                    </h4>
                                                    <br>
                                                    <p class="card-text">
                                                        <span class="fa fa-map-marker"></span>  {{  coordinates.address}}
                                                        <br/><br>
                                                       
                                                    </p>
                                                    <p  v-if="message.currentAction === 'getNearestBranchPlace' || message.currentAction === 'getNearestBranchLatLong'">

                                                       Operating Hours: <span class="style-green"> {{ coordinates.opening}} </span> -  <span class="style-green"> {{ coordinates.closing}} </span> 
                                                        <br/><br>
                                                        Status: 
                                                        <span class="style-red"> Open </span>
                                                    </p>
                                                    <p v-else>
                                                        Status: 
                                                        <span class="style-red"> Open </span>
                                                    </p>
                                                </div>  
                                            </div>
                                        </div>
                                    </div>
                        

                        <div class="credCards" v-else-if="message.currentAction === 'getCreditCardTypes' || message.currentAction === 'specificCard'">            
                            <div class="chat-bg">
                                {{ message.text }}
                            </div>     
                            <br>                           
                            <div class="chat-card-bundle custom-scroll">    
                                <div class="chat-card" v-for="(card, index) in message.data" :key="index">
                                    <div class="card-content">
                                        <img id="credCard" v-bind:src="`${card.imgSrc}`">
                                        <br><br>
                                         <span class="style-green">  {{ card.name }} </span> 
                                         <br><br> 
                                         <p class="card-text">
                                         
                                            {{ card.definition }}
                                        </p>    
                                 
                                 </div>
                                </div>
                            </div>
                        </div>

                        <div class="credCards" v-else-if="message.currentAction === 'getForeignExchange'">            
                            <div class="chat-bg">
                                {{ message.text }}
                            </div>     
                            <br>                           
                            <div class="chat-card-bundle custom-scroll">    
                                <div class="chat-card" v-for="(card, index) in message.data" :key="index">
                                    <div class="card-content">
                                          <img id="credCard" v-bind:src="`${card.imgSrc}`"><br><br>
                                         <span class="style-green">  {{ card.country }}  </span>   --  <span class="style-green">  PHP </span> 
                                         <br><br> 
                                         <p class="card-text">
                                            We buy:
                                            <span class="style-red">  {{ card.rate }} </span>
                                        </p>    
                                 
                                 </div>
                                </div>
                            </div>
                        </div>

                        <div class="credCards" v-else-if="message.currentAction === 'getDepositReqsList'">  
                           <div class="chat-bg">
                                {{ message.text }}
                            </div>                                
                                <br>
                              <div class="chat-card-bundle custom-scroll">    
                                <div class="chat-card" v-for="(requirements, index) in message.data" :key="index">
                                    <div class="card-content">
                                        <img id="credCard" v-bind:src="`${requirements.imgSrc}`">
                                        <br><br>
                                         <span class="style-green">  {{ requirements.name }} </span> 
                                         <br><br> 
                                         <p class="card-text">
                                            {{ requirements.definition }}
                                        </p>    
                                 <br><br>
                                 </div>
                                </div>
                            </div>
                        </div>

                    <div class="nearest-branch" v-else-if="message.currentAction === 'getChassiCommands'">
                            <div class="cardOne">
                                <div class="chat-card">
                                    <div class="card-content">
                                        <p class="card-text">
                                            {{ message.text }}
                                        </p>
                                    </div>
                                    <div class="chat-card" v-for="(commands, index) in message.data" :key="index">
                                    <div class="card-btn-bundle">
                                        <div class="card-btn" v-on:click="userInput('commands.name')">
                                            {{ commands.name }}
                                        </div>
                                    </div></div></div></div>
                    </div>

                    <div class="nearest-branch" v-else-if="message.currentAction === 'getCardReqs'">
                            <div class="cardOne">
                                <div class="chat-card">
                                    <div class="card-content">
                                        <p class="card-text">
                                            {{ message.text }}
                                        </p>
                                    </div>
                                    <div class="chat-card" v-for="(cardreqs, index) in message.data" :key="index">
                                    <div class="card-btn-bundle">
                                        <div class="card-btn">
                                           {{ cardreqs.id }}. {{ cardreqs.definition }}
                                        </div>
                                    </div>
                                </div></div></div>
                        </div>

                        <div class="nearest-branch" v-else-if="message.currentAction === 'getLoanDetails'">
                            <div class="cardOne">
                                <div class="chat-card">
                                    <div class="card-content">
                                        <p class="card-text">
                                            {{ message.text }}
                                        </p>
                                    </div>
                                    <div class="chat-card" v-for="(loans, index) in message.data" :key="index">
                                    <div class="card-btn-bundle">
                                        <div class="card-btn">
                                            {{ loans.name }}
                                        </div>
                                    </div></div></div></div>
                        </div>


                                   
                     
                        <div v-else class="chat-bg">
                            <p>{{ message.text }}</p>
                        </div>
                    </div> 
           </div></div>
            <div class="chat-suggestions custom-scroll">
                <a class="chat-suggestions-items" id="nearest-branch" v-on:click="nearestBranch">
                    Find Nearest Branch</a>
                <a class="chat-suggestions-items" id="nearest-atm" v-on:click="nearestAtm">
                    Find Nearest ATM</a>
                <a class="chat-suggestions-items" id="how-to-deposit" v-on:click="howToDeposit">
                    How To Deposit</a>
                <a class="chat-suggestions-items" id="card-info" v-on:click="cardInfo">
                    Credit Card Information</a>
            </div>

        <div class="chat-input" style="justify-content:space-around; align-items:center;">
            <div style="width:100%">
                <input v-model="message" v-on:keyup.enter="userInput" type="text" placeholder="Aa" style="padding:5px 8px; outline:none; width:100%; " />
            </div>
            <div style="margin:0px 20px;">
                <span id='sendButton' v-on:click="currentExchange" type="text" class="fa fa-paper-plane green-text"></span>
            </div>
        </div>
    </div>            

</template>

<script>
import Api from '../../lib/Api';
//import cardOne from '../../components/cardOne';
import imgCard from '../../components/imgCard';
const Math = require('mathjs');
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
        message: '', loanAmount:'', fixAmount:'', loanTerm:'',
        action: '',
        latLongs: [],
        coordinates: '',
        arrayLength: '',
        alldata: [],
        creditCards: [],
        depositReqs: [],
        chassiCommands: [],
        value: '',
        cardReqs: [],
        forex: [],
        loans: [],
    }
},
    methods: {

        calculatorFormula(){
            this.chat('user', `Amount: ₱ ${this.loanAmount} \n Term: ${this.loanTerm} years \n Fix Amount: ${this.fixAmount} years`, null, null);
            var lt = this.loanTerm * 12;
            var i = this.fixAmount / 12.0;
            var t = 1 + i;
            var tRaised = Math.pow(t, lt);
            var tRaised2 = tRaised * i;
            var denominator = tRaised - 1.0;
            var factor = tRaised2 / denominator;
            var answer = this.loanAmount * factor; 
            let rounded = Math.round(answer * Math.pow(10, 2))/Math.pow(10, 2);
            this.chat('robot', rounded, null, "calcAnswer"); 
            },


        currentExchange(string){
            var fx = require('money');
            Api.getJSON(
            'https://openexchangerates.org/api/latest.json?app_id=3f3984e88e63498c8c3ecd5c190a6302').then(data=>{
                if ( data != null ) {
                    let currencies = ["EUR", "USD", "CNY"];
                    let flags = ["https://i.imgur.com/3cx9v2o.png", "https://i.imgur.com/i9k1SyM.png", "https://i.imgur.com/7A4nl53.png"]
                    fx.rates = data.rates;
                    for(var i = 0; i < 3; i++){
                        let rate = fx.convert(1, {from: currencies[i], to: "PHP"});
                        this.forex.push({
                            'country' : currencies[i],
                            'rate' : rate,
                            'imgSrc' : flags[i],
                        });
                    }
                this.chat('robot', string, this.forex, this.action);      
                } else {
                    // If not, apply to fxSetup global:
                    var fxSetup = {
                        rates : data.rates,
                        base : data.base
                    }
                }
            });            
        },
        userInput() {
            this.chat('user', this.message);
            Api.post('/', {
                context: context || {},
                input: {
                    text: this.message || ""}
            }).then(data=>{
                console.log(data);
                context = data.context;
                this.action = data.context.action;
                if(this.action === 'getCardReqs' || this.action === 'getCreditCardTypes' || this.action === 'getDepositReqsList' || this.action === 'getChassiCommands' || this.action === 'getLoanDetails'){this.getDatabase(this.action);}
                else if(this.action === 'specificCard'){
                    this.value = data.entities[0].value;
                    this.getDatabase(this.action);
                }else if(this.action === 'getForeignExchange'){
                    this.currentExchange(data.output.text.join('\n'));
                }else{
                    this.checkIntent(data.output.text.join('\n'), null, this.action);
                }
                this.message= null;

            }).catch(error=>{
              console.log(error);
                this.message= null;
            });
            
        },
        forLocation(options){
        Api.post('/', options).then(data=>{
            for(var i=0; i < data.data.length; i++){
                if( data.context.action === 'getNearestATMPlace' || data.context.action === 'getNearestATMLatLong'){
                    if(data.data[i].status === 1){
                    this.latLongs.push({
                    'name': data.data[i].name,
                    'lat': data.data[i].latitude,
                    'long': data.data[i].longitude,
                    'address': data.data[i].address,
                    'opening' : data.data[i].opening,
                    'closing' : data.data[i].closing,
                });}
                }else if(data.context.action === 'getNearestBranchPlace' ||data.context.action === 'getNearestBranchLatLong'){
                this.latLongs.push({
                'name': data.data[i].name,
                'lat': data.data[i].latitude,
                'long': data.data[i].longitude,
                'address': data.data[i].address,
                'opening' : data.data[i].opening,
                'closing' : data.data[i].closing,
                });}
                
            }
            
            this.arrayLength = data.data.length;
            this.action = data.context.action;
            if(this.arrayLength>0){
                this.checkIntent(data.output.text.join('\n'),  this.latLongs, this.action);
            }
            else{
                this.checkIntent("Sorry, there are no branches / available ATMs near your location.",  null, this.action);
            }
            this.latLongs = [];
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
          }).catch(error=>{
            console.log(error);
                this.message= null;
        });
       
        },
        setPlace(place) {
          var self = this;
          self.position = place.geometry.location;
          if(this.action === "whichLocation"){
            context.action = "getNearestBranchPlace";
          }else{
            context.action = "getNearestATMPlace"}
            let options = {
              context: context || {},
              input:  {
                    text: place.name || ""
                }
            
          };
        this.chat('user', place.name, null);
        this.forLocation(options);  
          
        },
        setCurrentPlace(latitude,longitude) {
        var self = this;
        self.chat('user', self.message, null)
          if(this.action === "whichLocation"){
            context.action = "getNearestBranchLatLong";
          }else{
            context.action = "getNearestATMLatLong"
          }
          context.lat = latitude;
          context.lng = longitude;
          let options = {
              context: context || {},
              input:{
                text: self.message
              }
          };
         
        this.forLocation(options);
          
        },
        chat(sender, message, array, contextAction){
            this.messages.push({
                'sender' : sender,
                'text' : message,
                'data' : array,
                'currentAction' : contextAction,
            })   
            console.log(sender, message, array, contextAction);
        },
        checkIntent(message, array, action){
            this.chat('robot', message, array, action);
            
        },
        nearestBranch() {
            this.message="Find Nearest Branch"
            this.userInput();
        },
        nearestAtm() {
            this.message="Find Nearest ATM"
            this.userInput();
        },
        howToDeposit() {
            this.message="How To Deposit"
            this.userInput();
        },
        cardInfo() {
            this.message="Credit Card Information"
            this.userInput();
        },
        inputYes() {
            this.message="Use my current location"
            this.geoLocation();
            console.log("efa");
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
        getDatabase(action){
        context.action = action;
        if(context.action === 'specificCard'){context.value = this.value;}
        let options = {
            context: context || {},
            input:{
                text: this.message
              }
          };

         Api.post('/', options).then(data=>{
            if(context.action === 'getCreditCardTypes' || context.action ===  'specificCard'){
                for(var i=0; i < data.data.length; i++){
                    this.creditCards.push({
                    'id': data.data[i].id,
                    'code': data.data[i].code,
                    'name': data.data[i].name,
                    'definition': data.data[i].definition,
                    'imgSrc' : data.data[i].imgSrc,
                    });
                }
                this.chat('robot', data.output.text.join('\n'), this.creditCards, action);
            }else if(context.action === 'getDepositReqsList'){
                for(var i=0; i < data.data.length; i++){
                    this.depositReqs.push({
                    'id': data.data[i].id,
                    'name': data.data[i].name,
                    'definition': data.data[i].definition,
                    'imgSrc': data.data[i].imgSrc,
                    });
                }
                this.chat('robot', data.output.text.join('\n'), this.depositReqs, action);
                this.depositReqs = [];
            }else if(context.action === 'getChassiCommands'){
                for(var i=0; i < data.data.length; i++){
                    this.chassiCommands.push({
                    'id': data.data[i].id,
                    'name': data.data[i].name,
                    });
                }
                this.chat('robot', data.output.text.join('\n'), this.chassiCommands, action);
                this.chassiCommands = [];
            }else if(context.action === 'getCardReqs'){
                for(var i=0; i < data.data.length; i++){
                    this.cardReqs.push({
                    'id': data.data[i].id,
                    'definition': data.data[i].definition,
                    });
                }
                this.chat('robot', data.output.text.join('\n'), this.cardReqs, action);
            }else if(context.action === 'getLoanDetails'){
                for(var i=0; i < data.data.length; i++){
                    this.loans.push({
                    'id': data.data[i].id,
                    'loan_id': data.data[i].loan_id,
                    'name': data.data[i].name,
                    });
                }
                this.chat('robot', data.output.text.join('\n'), this.loans, action);
            }
        }).catch(error=>{
            console.log(error);
                this.message= null;
        });

        this.creditCards = [];
        this.depositReqs = [];
        this.loans = [];
        this.cardReqs = [];     
        this.value = null;
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
 @import '../../css/style.css';
 @import '../../css/style.scss';
    
    </style>