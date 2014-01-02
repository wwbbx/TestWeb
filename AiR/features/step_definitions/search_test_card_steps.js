// Generated by CoffeeScript 1.6.3
(function() {
  var search_test_card_steps;

  search_test_card_steps = function() {
    var pageObject;
    pageObject = require('../../support/airWorld');
    this.Given(/^AiR server have 4 34970A test cards$/, function(next) {
      pageObject.visit();
      pageObject.reset().then(pageObject.prepareSampleTestCards()).then(next());
      return console.log('I need to prepare 4 test cards.');
    });
    this.Given(/^I input "(.*)" into "Search Model Number" textbox$/, function(model, next) {
      pageObject.inputSearchModel(model);
      return next();
    });
    this.When(/^I click "(.*)" button$/, function(buttonName, next) {
      return pageObject.clickButton(buttonName).then(next());
    });
    this.Then(/^I should see (\d) test cards summary listed$/, function(count, next) {
      return pageObject.getSearchResult().then(function(result, next) {
        if (result.count === count) {
          return next();
        } else {
          return next.fail('Did not see ' + count + ' test cards in search result.');
        }
      });
    });
    return this.Then(/^(\d) test cards properties are as expected$/, function(number, next) {
      return pageObject.getSearchResult().then(function(result, next) {
        return next.pending();
      });
    });
  };

  module.exports = search_test_card_steps;

}).call(this);

/*
//@ sourceMappingURL=search_test_card_steps.map
*/
