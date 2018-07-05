const TAG = '[Branch]';
const db = require('../../../Common/Services/Database');
const err = require('../../../Common/Services/Errors');
const logger = require('../../../Common/Services/Logger');

const TABLE_NAME = 'branch';
const PARAMS = 'PARAMS';

const TABLE_COLUMNS = {
    id: 'int',
    name: 'string',
    address: 'string',
    latitude: 'double',
    longitude: 'double',
    contactno: 'string',
    opening: 'string',
    closing: 'string'

};

module.exports.getByNearestLatLong = (lat, long) => {
    const ACTION = '[getByNearestLatLong]';
    console.log(`[${new Date()}][MODEL - ${TABLE_NAME}].getByNearestLatLong [${PARAMS}]`, JSON.stringify({
        latitude: lat,
        longitude: long
    }));
    return new Promise((resolve, reject) => {
        let cols = TABLE_COLUMNS;
        let sql = `
            SELECT ${Object.keys(cols).join(',')}, (6371 * acos(cos(radians(?)) * cos(radians(latitude)) * cos(radians(longitude) - radians(?)) + sin(radians(?)) * sin(radians(latitude))) ) AS distance FROM ${TABLE_NAME} HAVING distance < 15 ORDER BY distance LIMIT 3;`;

        db.execute(sql,[lat, long, lat]).then(rows=>{
            resolve(JSON.parse(JSON.stringify(rows)));
        }).catch(error=>{
            logger.log('error', TAG + ACTION, error);
            reject(err.raise('INTERNAL_SERVER_ERROR', error));
        });
    });
};

module.exports.getBankHours = (name) => {
    const ACTION = '[getBankHours]';
    return new Promise((resolve, reject) => {
        let sql = `SELECT * FROM ${TABLE_NAME} WHERE MATCH (name,address)
        AGAINST ('${name}' IN NATURAL LANGUAGE MODE)`;
        console.log(sql);
        db.execute(sql).then(rows=>{
            resolve(rows);
        }).catch(error=>{
            logger.log('error', TAG + ACTION, error);
            reject(err.raise('INTERNAL_SERVER_ERROR', error));
        });
    });

}