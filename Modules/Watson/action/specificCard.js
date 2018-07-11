const creditCards = require('../../CreditCards/model/CreditCards');

module.exports.run = (context)=>{
  return creditCards.getSpecificDefinition(context.value);
};
