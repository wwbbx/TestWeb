homeSteps = ->
  AiRWorld = require("../../support/airWorld")
  hooks = require('../../support/after_hook')

  this.Given(/^I visit AiR server$/, (callback)->
    AiRWorld.visit()
    callback()
  )

  this.Then(/^I should see the page title is: "(.*)"$/, (title, callback)->
    AiRWorld.getTitle().then((result)->
      if(result.should.equal(title))
        callback()
      else
        callback.fail(new Error('Expected home page to have title ' + title))
    )
  )

module.exports = homeSteps