const express = require('express');
const router = express.Router();
const watson = require('./Services/Conversation');
const Errors = require('../../Common/Services/Errors');

router.get('/', (req, res, next)=>{
  //initial context
  let init = {
    context: {},
    input: {}
  };
  res.render('index', init);
});

router.post('/', (req, res, next)=>{
  watson.sendMessage(req.body.context, req.body.input).then(data=>{
    res.success(data);
  }).catch(error=>{
    let err = Errors.raise('WATSON_SEND_MSG_ERROR');
    err.error.details = error;
    res.error(err);
  })
});

module.exports = router;