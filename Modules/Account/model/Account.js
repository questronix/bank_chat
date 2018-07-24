const TAG = '[Account]';
const db = require('../../Common/service/Database');
const err = require('../../Common/service/Errors');
const logger = require('../../Common/service/Logger');

const TABLE1_NAME = 'account';
const TABLE2_NAME = 'accountreqs';

const PARAMS = 'PARAMS';

const TABLE_COLUMNS = {
    id: 'string',
    account_id: 'string',
    firstname: 'string',
    lastname: 'string',
    pin: 'string',
    birthday: 'string',
    accountno: 'string',
    status: 'string'

};

module.exports.getAccountDetails = () => {
    const ACTION = '[getAccountDetails]';
 
    return new Promise((resolve, reject) => {
        let cols = TABLE_COLUMNS;
        let sql = `
            SELECT account.id, account.account_id, account.firstname, account.lastname, account.pin, account.birthday, account.accountno, account.status FROM ${TABLE1_NAME} INNER JOIN ${TABLE2_NAME} ON ${TABLE1_NAME}.account_id = ${TABLE2_NAME}.account_id`;
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
            SELECT ${Object.keys(cols).join(',')} FROM ${TABLE1_NAME} INNER JOIN ${TABLE2_NAME} ON ${TABLE1_NAME}.account_id = ${TABLE2_NAME}.account_id WHERE ${TABLE1_NAME}.accountno = ?`;

        db.execute(sql,[inputName]).then(rows=>{
            resolve(JSON.parse(JSON.stringify(rows)));
        }).catch(error=>{
            logger.log('error', TAG + ACTION, error);
            reject(err.raise('INTERNAL_SERVER_ERROR', error));
        });
    });
};

