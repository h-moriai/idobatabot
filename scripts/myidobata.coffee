module.exports = (robot) ->
  robot.respond /hi(.*)/i,(msg) ->
  request = require 'request'
  fs = require('fs')
  msg.send '1'
  sheetApi = "https://script.google.com/a/esm.co.jp/macros/s/AKfycbxuMbs2c15Nl2Rhr1rb3YT77xhQVIIWHv-pEvJ2Qoek/exec" # GASで生成したAPI
  request {
  url: sheetApi
  },(err, response) ->
    msg.send 'err!'
    return