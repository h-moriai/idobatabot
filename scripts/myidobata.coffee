module.exports = (robot) ->
  robot.hear /(.*)$/i, (msg) ->
  request = robot.http('https://script.google.com/a/esm.co.jp/macros/s/AKfycbxuMbs2c15Nl2Rhr1rb3YT77xhQVIIWHv-pEvJ2Qoek/exec') # GASで生成したAPI
　　　　　　.query(address: msg.match[1])
            .get()
  request (err, res, body) ->
    if err
       msg.send 'みつからないよ'
       robot.emit 'error', err, res
       return
