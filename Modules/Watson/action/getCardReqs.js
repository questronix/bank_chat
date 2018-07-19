const cardreqs = require('../../CreditCards/model/CardReqs');

module.exports.run = (context)=>{
  return cardreqs.CardReqs(context.input);
};
