module.exports = (robot) ->
  robot.hear /(.*)$/i, (msg) ->
  request = robot.http('https://script.google.com/a/esm.co.jp/macros/s/AKfycbxuMbs2c15Nl2Rhr1rb3YT77xhQVIIWHv-pEvJ2Qoek/exec') # GAS‚Å¶¬‚µ‚½API
  request (err, res, body) ->
    if err
       msg.send '‚Ý‚Â‚©‚ç‚È‚¢‚æ'
       robot.emit 'error', err, res
       return
