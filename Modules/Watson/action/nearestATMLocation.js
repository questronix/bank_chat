const atm = require('../../ATM/model/ATM');

module.exports.run = (context)=>{
  return atm.getByNearestATM(context.lat, context.lng);
};