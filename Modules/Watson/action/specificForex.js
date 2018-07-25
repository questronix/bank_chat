const country = require('../../Country/model/Country');

module.exports.run = (context)=>{
  return country.getSpecificForex(context.context.country);
};
