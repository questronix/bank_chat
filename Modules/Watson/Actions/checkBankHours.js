const branch = require('../../Branch/Models/Branch');

module.exports.run = (context)=>{
  return branch.getBankHours(context.name);
};