module.exports = (robot) ->
  robot.respond /twitter (.*)/i, (msg) ->
    keyword = encodeURIComponent msg.match[1]
    request = msg.http('https://script.google.com/a/esm.co.jp/macros/s/AKfycbxuMbs2c15Nl2Rhr1rb3YT77xhQVIIWHv-pEvJ2Qoek/exec')
                          .query(q: keyword)
                          .get()
    request (err, res, body) ->
      json = JSON.parse body
      msg.send json.results[0].text if json.results.length > 0