# this is for using selenium-webdriver rather than webdriverjs.
chai = require('chai')
chai.should()

homeSteps = ->
	webdriver = require('selenium-webdriver')
	driver = new webdriver.Builder().
		withCapabilities(webdriver.Capabilities.chrome()).
		build()

	this.Given(/^I open ste.chn.agilent.com web page$/, (callback)->
		driver.get('http://ste.chn.agilent.com')
		callback()
		)

	this.Then(/^I should see page title is: "(.*)"$/, (title, callback)->
		driver.getTitle().then((actual)->
			if(actual.should.equal(title))
				callback()
			else
				callback.fail(new Error('Expected to be on page with title: ' + title))
			)
		)

module.exports = homeSteps
