#chai = require('chai')
#chai.should()
#
#homeSteps = ->
#	this.World = require("../../../support/world").World
#
#	this.Given(/^I open ste.chn.agilent.com web page$/, (callback)->
#		this.visit("http://ste.chn.agilent.com", callback)
#		)
#
#	this.Then(/^I should see page title is: "(.*)"$/, (title, callback)->
#		this.browser.getTitle((err, result)->
#			if (result.should.equal(title))
#				callback()
#			else
#				callback.fail(new Error('Expected to be on page with title ' + title))
#			)
#		)
#
#module.exports = homeSteps
