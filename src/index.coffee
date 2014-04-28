{spawn, exec} = require 'child_process'
fs = require "fs"

module.exports = class manifesto
  brunchPlugin: yes
  active: null
  options: null

  constructor: (@config) ->
    @active = @config.manifesto.active if @config.manifesto?.active