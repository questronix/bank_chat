const TAG = '[ATM]';
const db = require('../../Common/service/Database');
const err = require('../../Common/service/Errors');
const logger = require('../../Common/service/Logger');

const TABLE_NAME = 'atm';
const PARAMS = 'PARAMS';

const TABLE_COLUMNS = {
    id: 'int',
    name: 'string',
    address: 'string',
    latitude: 'double',
    longitude: 'double'
};

module.exports.getNearestATM = (lat, long) => {
    const ACTION = '[getNearestATM]';
    logger.log(`[${new Date()}][MODEL - ${TABLE_NAME}].getNearestATM [${PARAMS}]`, JSON.stringify({
        latitude: lat,
        longitude: long
    }));
    return new Promise((resolve, reject) => {
        let cols = TABLE_COLUMNS;
        let sql = `
            SELECT ${Object.keys(cols).join(',')}, (
                6371 *
                acos(cos(radians(?)) * 
                cos(radians(latitude)) * 
                cos(radians(longitude) - 
                radians(?)) + 
                sin(radians(?)) * 
                sin(radians(latitude)))
             ) AS distance FROM ${TABLE_NAME} HAVING distance < 15 ORDER BY distance LIMIT 3;
        `;
        db.execute(sql,[lat, long, lat]).then(rows=>{
            resolve(JSON.parse(JSON.stringify(rows)));
        }).catch(error=>{
            logger.log('error', TAG + ACTION, error);
            reject(err.raise('INTERNAL_SERVER_ERROR', error));
        });
    });
};