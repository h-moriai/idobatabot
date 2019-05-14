module.exports = (robot) ->
  robot.hear /(.*)$/i, (msg) ->
  request = robot.http("https://script.google.com/a/esm.co.jp/macros/s/AKfycbxuMbs2c15Nl2Rhr1rb3YT77xhQVIIWHv-pEvJ2Qoek/exec") # GAS‚Å¶¬‚µ‚½API
            .query(address: msg.match[1])
            .get()
    request (err, res, body) ->
    return
  msg.send "a"