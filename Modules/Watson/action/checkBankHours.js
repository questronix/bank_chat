const TAG = '[checkBankHours]';
const branch = require('../../Branch/model/Branch');
const err = require('../../Common/service/Errors');
const logger = require('../../Common/service/Logger');

module.exports.run = (context)=>{
  const ACTION = '[run]';
  return branch.getBankHours(context.name);
};