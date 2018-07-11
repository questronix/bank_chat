const TAG = '[nearestATMLocation]';
const atm = require('../../ATM/model/ATM');
const async = require('async');
const gc = require('../../Google/model/Google');
const err = require('../../Common/service/Errors');
const logger = require('../../Common/service/Logger');


module.exports.run = (context)=>{
  const ACTION = '[run]';
  logger.log('info', TAG + ACTION, context);

  return new Promise((resolve, reject)=>{
    async.auto({
      geocode : function(callback){
        gc.geoCoordinate(context.input.text).then(data=>{
          callback(null, data);
        }).catch(error=>{
          logger.log('error', TAG + ACTION, error);
          callback(error);
        });
      },
      getNearestATM : ['geocode', function(result, callback){
          let geocode = JSON.parse(result.geocode.body).results;
          if(geocode.length > 0 || result.geocode.response.statusCode == 200){
            atm.getNearestATM(geocode[0].geometry.location.lat, geocode[0].geometry.location.lng).then(data=>{
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
      }],
      addATMStatus : ['getNearestATM', function(result, callback){
        if(result.getNearestATM.length > 0 || result.getNearestATM.response.statusCode == 200){
          //loop here add random status
          let output = result.getNearestATM.map(elem=>{
            elem.status = Math.round(Math.random());  //random(1);
            return elem;
          });

          callback(null, output);
        }else{
          let er = err.raise('STATUS_PROBLEM');
            callback(er);
        }
      }]
    }, function(err, result){
      if(err) reject(err);
      resolve(result.addATMStatus);
    });
  });
};