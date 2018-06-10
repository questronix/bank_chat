/**
 * Ken Crucillo
 * 
 * Config to load all Vue components in webpack automatically
 */
const path = require('path');
const APP_DIR = path.resolve(__dirname, 'src/pages');

const jsFilesToInject = {
  home: [`${APP_DIR}/home/index.js`]
};

module.exports.entries = jsFilesToInject;