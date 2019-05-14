module.exports = (robot) ->
  robot.hear /a (.*)/, (msg) ->
    request = robot.http("https://script.google.com/a/esm.co.jp/macros/s/AKfycbxuMbs2c15Nl2Rhr1rb3YT77xhQVIIWHv-pEvJ2Qoek/exec")
                   .auth("h-moriai@esm.co.jp","turumaru3boy3")
                   .get()
    request (err, res, body) ->

      msg.send "finish"
