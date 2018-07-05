const branch = require('../../Branch/model/Branch');

module.exports.run = (context)=>{
  return branch.getBankHours(context.name);
};