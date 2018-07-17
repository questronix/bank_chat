const TAG = '[Loan]';
const db = require('../../Common/service/Database');
const err = require('../../Common/service/Errors');
const logger = require('../../Common/service/Logger');

const TABLE1_NAME = 'loan';
const TABLE2_NAME = 'loanreqs';

const PARAMS = 'PARAMS';

const TABLE_COLUMNS = {
    id: 'string',
    loan_id: 'string',
    name: 'string'

};

module.exports.getLoanDetails = () => {
    const ACTION = '[getLoanDetails]';
 
    return new Promise((resolve, reject) => {
        let cols = TABLE_COLUMNS;
        let sql = `
            SELECT ${Object.keys(cols).join(',')} FROM ${TABLE1_NAME} INNER JOIN ${TABLE2_NAME} ON ${TABLE1_NAME}.loan_id = ${TABLE2_NAME}.loan_id`;

        db.execute(sql,[]).then(rows=>{
            resolve(JSON.parse(JSON.stringify(rows)));
        }).catch(error=>{
            logger.log('error', TAG + ACTION, error);
            reject(err.raise('INTERNAL_SERVER_ERROR', error));
        });
    });
};

module.exports.getSpecificDetail = (inputName) => {
    const ACTION = '[getSpecificDetail]';
    return new Promise((resolve, reject) => {
        let cols = TABLE_COLUMNS;
        let sql = `
        SELECT ${Object.keys(cols).join(',')} FROM ${TABLE1_NAME} INNER JOIN ${TABLE2_NAME} ON ${TABLE1_NAME}.loan_id = ${TABLE2_NAME}.loan_id WHERE name = ?`;

        db.execute(sql,[inputName]).then(rows=>{
            resolve(JSON.parse(JSON.stringify(rows)));
        }).catch(error=>{
            logger.log('error', TAG + ACTION, error);
            reject(err.raise('INTERNAL_SERVER_ERROR', error));
        });
    });
};

