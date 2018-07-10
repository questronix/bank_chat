"use strict";
const TAG = '[Branch]';
const Ajax = require('../../Common/service/Ajax');
const err = require('../../Common/service/Errors');
const logger = require('../../Common/service/Logger');


module.exports.geocoordinate = (input) => {
  const ACTION = '[geocoordinate]';
  logger.log('info', TAG + ACTION, input);
  return new Promise((resolve, reject)=>{
    Ajax.setOptions({
      url:`https://maps.googleapis.com/maps/api/geocode/json?address=${input},+Philippines&key=AIzaSyCk5psk14jw6Rto0wmf5B_i1K6z9TgClWA`
    });
    Ajax.get().then(data=>{
      resolve(data);
    }).catch(error=>{
      logger.log('error', TAG + ACTION, error);
      reject(err.raise('INTERNAL_SERVER_ERROR', error));
    });    
  });
}
