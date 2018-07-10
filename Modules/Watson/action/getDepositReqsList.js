const depositreqs = require('../../DepositReqs/model/DepositReqs');

module.exports.run = (context)=>{
  return depositreqs.getDepositReqsList(context.input);
};
