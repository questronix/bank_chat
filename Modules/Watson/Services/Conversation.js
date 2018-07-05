const ConversationV1 = require('watson-developer-cloud/conversation/v1');
const action = require('./ActionLoader');

const conversation = new ConversationV1({
  username: process.env.CHAT_USER,
  password: process.env.CHAT_PASS,
  url: process.env.CHAT_URL,
  version_date: process.env.CHAT_VERSION
});

module.exports.sendMessage = (context, input)=> {

  const payload = {
    workspace_id: process.env.CHAT_ID,
    context: context || {},
    input: input || {}
  };

  return new Promise((resolve, reject)=>{
    conversation.message(payload, (err, data)=>{
      if (err) {
        reject({
          status: err.code || 500,
          error: err
        });
      }
      if(data.context.action === "fetch_location_lat_lng"){
        let branch = action.load('nearestBranchLocation', context);
        branch.then(locs=>{
          data.locations = locs;
          resolve(data);
        }).catch(error=>{
          reject({
            status: 500,
            error: error
          });
        });
      }
      else if(data.context.action === "fetch_atm_location_lat_lng"){
        let atm = action.load('nearestATMLocation', context);
        atm.then(locs=>{
          data.locations = locs;
          resolve(data);
        }).catch(error=>{
          reject({
            status: 500,
            error: error
          });
        });
      }
      else if(data.context.action === "fetch_bank_hours"){
        let branch = action.load('checkBankHours', context);
        branch.then(locs=>{
          data.locations = locs;
          resolve(data);
        }).catch(error=>{
          reject({
            status: 500,
            error: error
          });
        });
      }
      else{
        resolve(data); 
      }
    });
  });
};