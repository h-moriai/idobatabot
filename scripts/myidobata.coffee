module.exports = (robot) ->
  robot.respond /about(.*)/, (msg) ->
    request = require('request');
    request.get("https://script.google.com/a/esm.co.jp/macros/s/AKfycbxuMbs2c15Nl2Rhr1rb3YT77xhQVIIWHv-pEvJ2Qoek/dev?InputDate=#{msg.match[1]}", (error, response, body) ->
      if error or response.statusCode != 200
        return msg.send('Ž¸”s‚µ‚Ü‚µ‚½...'))