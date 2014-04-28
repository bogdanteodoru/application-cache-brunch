{spawn, exec} = require 'child_process'
fs = require "fs"

module.exports = class Manifesto
  brunchPlugin: yes
  active: null
  options: null

  constructor: (@config) ->
    @active = @config.manifesto.active if @config.manifesto?.active