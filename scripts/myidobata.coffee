module.exports = (robot) ->
  robot.hear /\d{4}[/]/, (msg) ->
    btag = '<a href="'
    url  = 'https://script.google.com/macros/s/AKfycbwYpMAdWRGfhi6OyOdwFRW_jYYr3zKrqkHzpAc-qzawGSOMlK0n/exec'
    atag = '">'
    ftag = "</a>"
    msg.send "ok"
    msg.send "#{btag}#{url}#{atag}#{msg.match[1]}#{ftag}"