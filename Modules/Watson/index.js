const TAG = '[Watson]';
const express = require('express');
const router = express.Router();
const watson = require('./service/Conversation');
const Errors = require('../Common/service/Errors');
const watsonBranch = require('./action/nearestBranchLocation');
const watsonATM = require('./action/nearestATMLocation');

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

router.get('/nearestBranch', (req, res, next)=>{
  watsonBranch.run({
    input: req.query.input
  }).then(data=>{
    res.success(data);
  }).catch(error=>{
    let err = Errors.raise('WATSON_SEND_MSG_ERROR');
    err.error.details = error;
    res.error(err);
  })
});

router.get('/nearestATM', (req, res, next)=>{
  watsonATM.run({
    input: req.query.input
  }).then(data=>{
    res.success(data);
  }).catch(error=>{
    let err = Errors.raise('WATSON_SEND_MSG_ERROR');
    err.error.details = error;
    res.error(err);
  })
});

module.exports = router;