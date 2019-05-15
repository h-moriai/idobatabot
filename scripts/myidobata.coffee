module.exports = (robot) ->
  robot.respond /(19[0-9]{2}|20[0-9]{2})/([1-9]|1[0-2])/([1-9]|[12][0-9]|3[01])/, (msg) ->
    btag = '<a href="'
    url  = 'https://script.google.com/macros/s/AKfycbwYpMAdWRGfhi6OyOdwFRW_jYYr3zKrqkHzpAc-qzawGSOMlK0n/exec'
    atag = '">'
    ftag = '</a>'
    msg.send "#{btag}#{url}#{atag}#{msg.match[1]}#{ftag}"