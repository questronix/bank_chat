const atm = require('../../CreditCards/model/CreditCards');

module.exports.run = (context)=>{
  return atm.getCCDefinition(context.input);
};
