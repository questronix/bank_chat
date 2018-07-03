

/**
 * Reload package asynchronously
 * @param {string} package_name 
 */
module.exports.load = (package_name, context)=>{
  let action = require('../Actions/' + package_name)
  return action.run(context);
};