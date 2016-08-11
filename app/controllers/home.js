var express = require('express'),
  router = express.Router(),
  Article = require('../models/article'),
  os = require('os');

module.exports = function (app) {
  app.use('/', router);
};

router.get('/', function (req, res, next) {
  var articles = [new Article(), new Article()];
    res.render('index', {
      title: 'Simple webapp',
      articles: articles,
      hostname: os.hostname()
    });
});
