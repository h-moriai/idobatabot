module.exports = (robot) ->
  robot.hear /\d{4}[/]\d{2}[/]\d{2}/i, (msg) ->
    btag = '<a href="'
    url  = 'https://script.google.com/macros/s/AKfycbwYpMAdWRGfhi6OyOdwFRW_jYYr3zKrqkHzpAc-qzawGSOMlK0n/dev?InputDate='
    atag = '" target="_blank">'
    ftag = "</a>"
    msg.send "#{btag}#{url}#{msg.match[0]}#{atag}#{msg.match[0]}#{ftag}"
  robot.hear /^(?!.*\d{4}[/]\d{2}[/]\d{2}).+$/i, (msg) ->
    btag = '<a href="'
    url  = 'https://script.google.com/macros/s/AKfycbwYpMAdWRGfhi6OyOdwFRW_jYYr3zKrqkHzpAc-qzawGSOMlK0n/exec'
    atag = '" target="_blank">'
    ftag = "</a>"
    d = new Date
    year  = d.getFullYear()     # �N�i����j
    month = d.getMonth() + 1    # ��
    date  = d.getDate()         # ��
    msg.send "#{btag}#{url}#{atag}����(#{year}�N#{month}��#{date}��)#{ftag}"