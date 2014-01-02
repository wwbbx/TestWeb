# this is just for viewing object under test.
# none of them will success because right now
# it depends on cucumber's "callback" to block
# it until it return values.

airWorld = require('./airWorld')

airWorld.visit('http://www.google.com', ->
  console.log 'finish visiting google.com'
)

title = airWorld.getTitle()
console.log 'retrieved title is: ' + title
