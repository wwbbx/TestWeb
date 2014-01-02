search_test_card_steps = ->

  pageObject = require('../../support/airWorld')

  # Background.Given. I need to prepare 4 test cards
  # for rest of scenario's testing.
  this.Given(/^AiR server have 4 34970A test cards$/, (next)->
    pageObject.visit()

    # Init() to make AiR server have nothing.
    pageObject.reset()

    # Post 4 new test cards that we already prepared in this test scenario.
    .then(pageObject.prepareSampleTestCards())

    # call next to indicate cucumber that we are finished.
    # and it can proceed to next step.
    .then(next())

    console.log 'I need to prepare 4 test cards.'
  )

  this.Given(/^I input "(.*)" into "Search Model Number" textbox$/, (model, next)->

    pageObject.inputSearchModel(model)

    next()

  )

  this.When(/^I click "(.*)" button$/, (buttonName,  next)->

    pageObject.clickButton(buttonName ).then(next())

  )

  this.Then(/^I should see (\d) test cards summary listed$/, (count,  next)->

    # get search result and validate count of result items.
    pageObject.getSearchResult().then((result, next)->
      # if result is as expected, callback
      # if result is not as expected, callback.fail
      if(result.count == count)
        next()
      else
        next.fail('Did not see ' + count + ' test cards in search result.')
    )

  )

  this.Then(/^(\d) test cards properties are as expected$/, (number, next)->
    # get search result and validate content
    pageObject.getSearchResult().then((result, next)->

      # if result contains 4 expected test cards
      #   next()
      # else if result not contains 4 test cards
      #   next.fail()

      # TODO: Remove pending after finish assert logic.
      next.pending()

    )
  )

module.exports = search_test_card_steps