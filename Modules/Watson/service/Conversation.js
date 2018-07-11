const TAG = '[Conversation]';
const AssistantV1 = require('watson-developer-cloud/assistant/v1');
const err = require('../../Common/service/Errors');
const logger = require('../../Common/service/Logger');
const action = require('./ActionLoader');

const conversation = new AssistantV1({
  iam_apikey: process.env.CHAT_API_KEY,
  version: process.env.CHAT_VERSION,
  url: process.env.CHAT_URL
});

module.exports.sendMessage = (context, input) => {
  const ACTION = '[sendMessage]';
  const payload = {
    workspace_id: process.env.CHAT_ID,
    context: context || {},
    input: input || {}
  };
  logger.log('info', `${TAG}${ACTION}$ - payload`, payload );
  return new Promise((resolve, reject) => {
    conversation.message(payload, (err, result, response) => {
      if (err) {
        reject({
          status: err.code || 500,
          error: err
        });
      }

      let actions = action.load(result.context, payload);
      actions.then(elem => {
        result.data = elem;
        resolve(result);
      }).catch(error => {
        let err = Errors.raise('WATSON_SEND_MSG_ERROR');
        err.error.details = {
          response: response,
          error: error
        };
        reject(err);
      });
    });
  });
};