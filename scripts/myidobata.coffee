module.exports = (robot) ->
  robot.hear /a (.*)/, (msg) ->
    request = robot.http("https://script.google.com/macros/s/AKfycbwYpMAdWRGfhi6OyOdwFRW_jYYr3zKrqkHzpAc-qzawGSOMlK0n/exec")
                   .get()
    request (err, res, body) ->
          if err?
            msg.send err
          else
            msg.send "successed."