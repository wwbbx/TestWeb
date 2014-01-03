hooks = ->

  #this.After((callback)->
  #  airWorld.browser.quit()
  #  callback()
  #)

  this.AfterFeatures((callback)->
    airWorld.browser.quit()
  )

module.exports = hooks