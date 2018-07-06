const branch = require('../../Branch/model/Branch');

module.exports.run = (context)=>{
  return branch.getByNearestLatLong(context.lat, context.lng);
};