'use strict';

const crypto = require('crypto');

let SaltLength = 16;

function createHash(password) {
    let salt = generateSalt(SaltLength);
    let hash = sha256(password, salt);
    return {
        salt: salt,
        passwordHash: hash
    };
};

function validateHash(password, hash, salt) {
    let validHash = sha256(password, salt);
    return hash === validHash;
};

function generateSalt(length) {
    return crypto.randomBytes(Math.ceil(length / 2))
        .toString('hex')
        .slice(0, length);
};

function sha256(password, salt) {
    let hash = crypto.createHmac('sha256', salt);
    hash.update(password);
    let passwordHash = hash.digest('hex');
    return passwordHash;
};

module.exports = {
    hash: createHash,
    validate: validateHash
};