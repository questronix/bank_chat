const atm = require('../../ATM/Models/ATM');

module.exports.run = (context)=>{
  return atm.getByNearestATM(context.lat, context.lng);
};