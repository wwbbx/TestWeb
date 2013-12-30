chai = require('chai')
chai.should()

homeSteps = ->
  webdriver = require('selenium-webdriver')
  driver = new webdriver.Builder().
    withCapabilities(webdriver.Capabilities.chrome()).
    build()

  this.Given(/^I visit AiR server$/, (callback)->
    driver.get('http://www.google.com')
    callback()
  )

  this.Then(/^I should see the page title is: "(.*)"$/, (title, callback)->
    driver.getTitle().then((result)->
      if(result.should.equal(title))
        callback()
      else
        callback.fail(new Error('Expected home page to have title ' + title))

      driver.quit()
    )
  )

module.exports = homeSteps