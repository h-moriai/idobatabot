module.exports = (robot) ->
  robot.hear /a (.*)/, (msg) ->
    request = robot.http("https://script.google.com/a/esm.co.jp/macros/s/AKfycbxuMbs2c15Nl2Rhr1rb3YT77xhQVIIWHv-pEvJ2Qoek/exec")
                   .get()
    request (err, res, body) ->
          if err?
            msg.send err
          else
            msg.send "successed."