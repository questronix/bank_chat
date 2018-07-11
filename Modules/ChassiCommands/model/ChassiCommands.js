const TAG = '[ChassiCommands]';
const db = require('../../Common/service/Database');
const err = require('../../Common/service/Errors');
const logger = require('../../Common/service/Logger');

const TABLE_NAME = 'chassicommands';
const PARAMS = 'PARAMS';

const TABLE_COLUMNS = {
    id: 'string',
    name: 'string',
    // definition: 'string',
    // imgSrc: 'string',

};

module.exports.getChassiCommands = () => {
    const ACTION = '[getChassiCommands]';
 
    return new Promise((resolve, reject) => {
        let cols = TABLE_COLUMNS;
        let sql = `
            SELECT ${Object.keys(cols).join(',')} FROM ${TABLE_NAME}`;

        db.execute(sql,[]).then(rows=>{
            resolve(JSON.parse(JSON.stringify(rows)));
        }).catch(error=>{
            logger.log('error', TAG + ACTION, error);
            reject(err.raise('INTERNAL_SERVER_ERROR', error));
        });
    });
};


