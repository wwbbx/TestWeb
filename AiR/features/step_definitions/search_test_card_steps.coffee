search_test_card_steps = ->

  AiRWorld = require('../../support/airWorld')

  # Background.Given. I need to prepare 4 test cards
  # for rest of scenario's testing.
  this.Given(/^AiR server have 4 34970A test cards$/, (next)->
    AiRWorld.visitServer()

    # Init() to make AiR server have nothing.
    # Post 4 new test cards that we already prepared in this test scenario.

    # call next to indicate cucumber that we are finished.
    # and it can proceed to next step.
    next()

    console.log 'I need to prepare 4 test cards.'
  )

  this.Given(/^I input "(.*)" into "Search Model Number" textbox$/, (model, next)->
    console.log 'need to define input step to search ' + model
    next()
  )

  this.When(/^I click "(.*)" button$/, (button,  next)->
    console.log 'clicking ' + button + ' button'
    next()
  )

  this.Then(/^I should see (\d) test cards summary listed in "(.*)" panel$/, (count,  panelName, next)->
    AiRWorld.getTitle().then((result)->
      console.log 'title is: ' + result
      next()
    )
    console.log 'check to see ' + count + ' test card in ' + panelName + ' area'
  )

  this.Then(/^(\d) test cards properties are as expected$/, (number, next)->
    console.log 'check test card properties'
    next()
  )

module.exports = search_test_card_steps