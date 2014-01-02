homeSteps = ->
  AiRWorld = require("../../support/airWorld")

  this.Given(/^I visit AiR server$/, (callback)->
    AiRWorld.visitServer()
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