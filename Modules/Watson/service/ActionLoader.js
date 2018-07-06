

/**
 * Reload package asynchronously
 * @param {string} package_name 
 */
module.exports.load = (package_name, context)=>{
  if(package_name["action"] !== ""){
    if(typeof package_name["action"] !== 'undefined'){
      try{
        let action = require('../action/' + package_name["action"]);
        return action.run(context);
      }catch(e){}
    }
  }
  return Promise.resolve(null);
};