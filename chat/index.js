const express = require('express');
const router = express.Router();

const ajax = require('../common/services/Ajax');

router.post('/', (req, res, next)=>{
  ajax.setOptions({
    url: `${process.env.CORE_URL}/chat`
  });
  ajax.post(req.body).then(data=>{
    res.json(data);
  }).catch(error=>{
    res.json(error);
  });
});

router.get('/', (req, res, next)=>{
  ajax.setOptions({
    url: `${process.env.CORE_URL}/chat?name=${req.query.name}`
  });
  ajax.get().then(data=>{
    res.json(data);
  }).catch(error=>{
    res.json(error);
  });
});

module.exports = router;