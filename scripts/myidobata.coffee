request = require 'request'
cheerio = require 'cheerio'
 
module.exports = (robot) ->
  robot.hear /a (.*)/, (msg) ->
    url = "https://script.google.com/macros/s/AKfycbwYpMAdWRGfhi6OyOdwFRW_jYYr3zKrqkHzpAc-qzawGSOMlK0n/exec"
    options =
      url: url
      timeout: 2000
      headers: {'user-agent': 'node title fetcher'}
 
    request options, (error, response, body) ->
      $ = cheerio.load body
      title = $('title').text().replace(/\n/g, '')
      msg.send(title)