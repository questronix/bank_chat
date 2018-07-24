const account = require('../../Account/model/Account');

module.exports.run = (context)=>{
  return account.getAccountDetails();
};