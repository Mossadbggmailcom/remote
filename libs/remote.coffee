StaticServer = require('./static.coffee')
ProxyServer = require('./proxy.coffee')
RemoteInitializer = require('./init.coffee')

options = {}

module.exports = ->
  new RemoteInitializer(options).initialize()
  new StaticServer(options).start()
  new ProxyServer(options).start()

  console.log "Remote -- serving local files at " + options.localhost + ":" + options.localport
