const TAG = '[nearestBranchLocation]';
const branch = require('../../Branch/model/Branch');
const gc = require('../../Google/model/Google');
const err = require('../../Common/service/Errors');
const logger = require('../../Common/service/Logger');
const async = require('async');


module.exports.run = (payload)=>{
  
  const ACTION = '[run]';
  logger.log('info', TAG + ACTION, payload);
  //return branch.getByNearestLatLong(context.lat, context.lng);
  
  return new Promise((resolve, reject)=>{
    async.auto({
      geocode : function(callback){
        gc.geoCoordinate(payload.input.text).then(data=>{
          callback(null, data);
        }).catch(error=>{
          logger.log('error', TAG + ACTION, error);
          callback(error);
        });
      },
      getNearestBranch : ['geocode', function(result, callback){
          let geocode = JSON.parse(result.geocode.body).results;
          if(geocode.length > 0 || result.geocode.response.statusCode == 200){
            branch.getByNearestLatLong(geocode[0].geometry.location.lat, geocode[0].geometry.location.lng).then(data=>{
              callback(null, data);
            }).catch(error=>{
              logger.log('error', TAG + ACTION, error);
              callback(error);
            });
          }else{
            //no fetch data
            let e = err.raise('GOOGLE_NO_GEOCODE');
            callback(e);
          }
      }]
    }, function(err, result){
      if(err) reject(err);
      resolve(result.getNearestBranch);
    });
  });  
};