# no longer use this.
# I switched to use airWorld.coffee as
# PageObject for AiR server.

chai = require('chai')
chai.should()

expect = chai.expect;
assert = chai.assert;

webdriver = require('selenium-webdriver')
browser = new webdriver.Builder().
  withCapabilities(webdriver.Capabilities.chrome()).
  build()

module.exports = browser
