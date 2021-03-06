const TAG = '[ActionLoader]';
const err = require('../../Common/service/Errors');
const logger = require('../../Common/service/Logger');

/**
 * Reload package asynchronously
 * @param {string} package_name 
 */
module.exports.load = (package_name, payload)=>{
  const ACTION = '[load]';
  if(package_name["action"] !== ""){
    if(typeof package_name["action"] !== 'undefined'){
      try{
        let action = require('../action/' + package_name["action"]);
        console.log(action);
        return action.run(payload);
      }catch(e){}
    }
  }
  return Promise.resolve(null);
};