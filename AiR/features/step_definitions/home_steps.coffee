homeSteps = ->
  browser = require("../../support/world")

  this.Given(/^I visit AiR server$/, (callback)->
    browser.get('http://localhost:1337')
    callback()
  )

  this.Then(/^I should see the page title is: "(.*)"$/, (title, callback)->
    browser.getTitle().then((result)->
      if(result.should.equal(title))
        callback()
      else
        callback.fail(new Error('Expected home page to have title ' + title))
    )
  )

module.exports = homeSteps