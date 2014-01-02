# AiRWorld is the PageObject for AiR AUT (Application Under Test).
# It is an isolation layer between cucumber step definition and
# AiR web application.

chai = require('chai')
expect = chai.expect
assert = chai.assert
chai.should()

webdriver = require('selenium-webdriver')
client = new webdriver.Builder().
  withCapabilities(webdriver.Capabilities.chrome()).
  build()

airWorld = {
  localAiRServerUrl: 'http://localhost:1337'

  browser: client

  visit: ->
    client.get(@localAiRServerUrl)

  getTitle: ->
    client.getTitle()

  reset: ->
    # TODO: make this as promise
    console.log 'reset AiR server DB'

  prepareSampleTestCards: ->
    # TODO: make this as promise
    console.log 'prepare 4 sample test cards for AiR'

  inputSearchModel: (model)->
    # TODO: make this as promise
    console.log 'input given model number: ' + model + ' input model search textbox'

  clickButton: (buttonName)->
    # TODO: make this as promise
    console.log "click button (#{buttonName}) on AiR"

  getSearchResult: ->
    # TODO: make this as promise
    console.log 'return search result'

}
module.exports = airWorld