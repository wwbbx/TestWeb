// Generated by CoffeeScript 1.6.3
(function() {
  var assert, browser, chai, expect, webdriver;

  chai = require('chai');

  chai.should();

  expect = chai.expect;

  assert = chai.assert;

  webdriver = require('selenium-webdriver');

  browser = new webdriver.Builder().withCapabilities(webdriver.Capabilities.chrome()).build();

  module.exports = browser;

}).call(this);

/*
//@ sourceMappingURL=world.map
*/