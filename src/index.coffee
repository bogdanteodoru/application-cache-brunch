{spawn, exec} = require 'child_process'
fs = require "fs"

module.exports = class applicationCache
  brunchPlugin: yes
  active: null
  path: "public/"
  cache: []
  network: []
  fallback: []
  options: null

  constructor: (@config) ->
    @active = @config.applicationCache.active if @config.applicationCache?.active
    @path = @config.applicationCache.path if @config.applicationCache?.path
    @cache = @config.applicationCache.cache if @config.applicationCache?.cache
    @network = @config.applicationCache.network if @config.applicationCache?.network
    @fallback = @config.applicationCache.fallback if @config.applicationCache?.fallback

  onCompile: ->
    @addStringsToFile() if @active

  addStringsToFile: ->
    # empty data at first
    data = ""

    # add header for manifest file
    data += "CACHE MANIFEST\n" + "# " + new Date().toISOString().replace(/T/, ' ').replace(/\..+/, '') + "\n\n"

    # cache files

    fs.writeFile @path + "app.appcache", fileHeader, (err) ->
      throw err if err
      return
