module.exports = (robot) ->
  robot.hear /\d{4}[/]\d{2}[/]\d{2}/i, (msg) ->
    btag = '<a href="'
    url  = 'https://script.google.com/macros/s/AKfycbwYpMAdWRGfhi6OyOdwFRW_jYYr3zKrqkHzpAc-qzawGSOMlK0n/exec'
    atag = '"target="_blank">'
    ftag = "</a>"
    msg.send "ok"
    msg.type 'html'
    msg.send "#{btag}#{url}#{atag}#{msg.match[0]}#{ftag}"