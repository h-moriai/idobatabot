module.exports = (robot) ->
  robot.respond /about(.*)/, (msg) ->
    request = robot.http(https://script.google.com/a/esm.co.jp/macros/s/AKfycbxuMbs2c15Nl2Rhr1rb3YT77xhQVIIWHv-pEvJ2Qoek/dev?InputDate=#{msg.match[1]}")
                   .get()