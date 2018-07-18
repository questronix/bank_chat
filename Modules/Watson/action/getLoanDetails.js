const loan = require('../../Loan/model/Loan');

module.exports.run = (context)=>{
  return loan.getLoanDetails(context.input);
};