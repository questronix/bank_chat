"use strict";
const TAG = '[Google]';
const Ajax = require('../../Common/service/Ajax');
const err = require('../../Common/service/Errors');
const logger = require('../../Common/service/Logger');


module.exports.geoCoordinate = (input) => {
  const ACTION = '[geoCoordinate]';
  logger.log('info', TAG + ACTION, input);
  return new Promise((resolve, reject)=>{
    Ajax.setOptions({
      url: `https://maps.googleapis.com/maps/api/geocode/json?address=${encodeURIComponent(input)},+Philippines&key=AIzaSyCk5psk14jw6Rto0wmf5B_i1K6z9TgClWA`
    }).get().then(data=>{
      resolve(data);
    }).catch(error=>{
      logger.log('error', TAG + ACTION, error);
      let errors = err.raise('INTERNAL_SERVER_ERROR');
      errors.error.details = error;
      reject(errors);
    });    
  });
}
