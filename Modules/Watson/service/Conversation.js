const ConversationV1 = require('watson-developer-cloud/conversation/v1');
const action = require('./ActionLoader');

const conversation = new ConversationV1({
  username: process.env.CHAT_USER,
  password: process.env.CHAT_PASS,
  url: process.env.CHAT_URL,
  version_date: process.env.CHAT_VERSION
});

module.exports.sendMessage = (context, input) => {

  const payload = {
    workspace_id: process.env.CHAT_ID,
    context: context || {},
    input: input || {}
  };

  return new Promise((resolve, reject) => {
    conversation.message(payload, (err, data) => {
      if (err) {
        reject({
          status: err.code || 500,
          error: err
        });
      }

      let actions = action.load(data.context, context);
      actions.then(elem => {
        data.data = elem;
        resolve(data);
      }).catch(error => {
        reject({
          status: 500,
          error: error
        });
      });
    });
  });
};