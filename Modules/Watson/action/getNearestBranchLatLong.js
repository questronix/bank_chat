const branch = require('../../Branch/model/Branch');

module.exports.run = (context)=>{
  return branch.getByNearestLatLong(context.context.lat, context.context.lng);
};