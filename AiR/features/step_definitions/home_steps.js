// Generated by CoffeeScript 1.6.3
(function() {
  var homeSteps;

  homeSteps = function() {
    var browser;
    browser = require("../../support/world");
    this.Given(/^I visit AiR server$/, function(callback) {
      browser.get('http://localhost:1337');
      return callback();
    });
    return this.Then(/^I should see the page title is: "(.*)"$/, function(title, callback) {
      return browser.getTitle().then(function(result) {
        if (result.should.equal(title)) {
          return callback();
        } else {
          return callback.fail(new Error('Expected home page to have title ' + title));
        }
      });
    });
  };

  module.exports = homeSteps;

}).call(this);

/*
//@ sourceMappingURL=home_steps.map
*/