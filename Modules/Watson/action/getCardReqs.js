const cardreqs = require('../../CreditCards/model/CardReqs');

module.exports.run = (context)=>{
  return cardreqs.getCardReqs(context.input);
};
