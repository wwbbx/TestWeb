// Generated by CoffeeScript 1.6.3
(function() {
  var search_test_card_steps;

  search_test_card_steps = function() {
    var AiRWorld;
    AiRWorld = require('../../support/airWorld');
    this.Given(/^AiR server have 4 34970A test cards$/, function(next) {
      AiRWorld.visitServer();
      next();
      return console.log('I need to prepare 4 test cards.');
    });
    this.Given(/^I input "(.*)" into "Search Model Number" textbox$/, function(model, next) {
      console.log('need to define input step to search ' + model);
      return next();
    });
    this.When(/^I click "(.*)" button$/, function(button, next) {
      console.log('clicking ' + button + ' button');
      return next();
    });
    this.Then(/^I should see (\d) test cards summary listed in "(.*)" panel$/, function(count, panelName, next) {
      AiRWorld.getTitle().then(function(result) {
        console.log('title is: ' + result);
        return next();
      });
      return console.log('check to see ' + count + ' test card in ' + panelName + ' area');
    });
    return this.Then(/^(\d) test cards properties are as expected$/, function(number, next) {
      console.log('check test card properties');
      return next();
    });
  };

  module.exports = search_test_card_steps;

}).call(this);

/*
//@ sourceMappingURL=search_test_card_steps.map
*/
