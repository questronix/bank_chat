const branch = require('../../Branch/Models/Branch');

module.exports.run = (context)=>{
  return branch.getByNearestLatLong(context.lat, context.lng);
};