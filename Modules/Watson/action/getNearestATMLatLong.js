const TAG = '[getNearestATMPlace]';
const atm = require('../../ATM/model/ATM');
const async = require('async');
const err = require('../../Common/service/Errors');
const logger = require('../../Common/service/Logger');


module.exports.run = (context)=>{
  const ACTION = '[run]';
  logger.log('info', TAG + ACTION, context);

  return new Promise((resolve, reject)=>{
    async.auto({
      getNearestATM : function(callback){
            atm.getNearestATM(context.context.lat, context.context.lng).then(data=>{
              callback(null, data);
            }).catch(error=>{
              logger.log('error', TAG + ACTION, error);
              callback(error);
            });
      },
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