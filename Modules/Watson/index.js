const express = require('express');
const router = express.Router();

router.post('/', (req, res, next)=>{
  res.send('watson endpont');  
});

module.exports = router;