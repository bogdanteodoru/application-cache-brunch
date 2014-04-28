{spawn, exec} = require 'child_process'
fs = require "fs"

module.exports = class applicationCache
  brunchPlugin: yes
  active: null
  options: null

  constructor: (@config) ->
    @active = @config.applicationCache.active if @config.applicationCache?.active

  onCompile: ->
    @testMe()

  testMe: ->
    console.log("HI!!!")