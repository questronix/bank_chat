const TAG = '[Country]';
const db = require('../../Common/service/Database');
const err = require('../../Common/service/Errors');
const logger = require('../../Common/service/Logger');

const TABLE_NAME = 'country';
const PARAMS = 'PARAMS';

const TABLE_COLUMNS = {
    id: 'string',
    code: 'string',
    country_name: 'string',
    imgSrc: 'string',

};

module.exports.getSpecificForex = (inputName) => {
    const ACTION = '[getSpecificForex]';
 
    return new Promise((resolve, reject) => {
        let cols = TABLE_COLUMNS;
        let sql = `
            SELECT ${Object.keys(cols).join(',')} FROM ${TABLE_NAME} WHERE code = ?`;

        db.execute(sql,[inputName]).then(rows=>{
            resolve(JSON.parse(JSON.stringify(rows)));
        }).catch(error=>{
            logger.log('error', TAG + ACTION, error);
            reject(err.raise('INTERNAL_SERVER_ERROR', error));
        });
    });
};


