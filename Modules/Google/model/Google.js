"use strict";
const Ajax = require('../../Common/service/Ajax');

module.exports.geocoordinate = (input) => {
  return new Promise((resolve, reject)=>{
    Ajax.setOptions({
      url:`https://maps.googleapis.com/maps/api/geocode/json?address=${input},+Philippines&key=AIzaSyCk5psk14jw6Rto0wmf5B_i1K6z9TgClWA`
    });
    Ajax.get().then(data=>{
      resolve(data);
    }).catch(error=>{
      reject(error);
    });    
  });
}
