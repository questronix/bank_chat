const atm = require('../../ATM/model/ATM');

module.exports.run = (context)=>{
  return atm.getNearestATM(context.context.lat, context.context.lng);
};
