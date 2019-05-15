module.exports = (robot) ->
  robot.hear /\d{4}[/]\d{2}[/]\d{2}/i, (msg) ->
    btag = '<a href="'
    url  = 'https://script.google.com/macros/s/AKfycbwYpMAdWRGfhi6OyOdwFRW_jYYr3zKrqkHzpAc-qzawGSOMlK0n/dev?InputDate='
    atag = '" target="_blank">'
    ftag = "</a>"
    adapter  = msg.robot.adapter
    envelope = msg.envelope
    adapter.sendHTML envelope, "#{btag}#{url}#{msg.match[0]}#{atag}#{msg.match[0]}#{ftag}"
  robot.respond /(.*)^(?!.*\d{4}[/]\d{2}[/]\d{2}).+$/i, (msg) ->
    btag = '<a href="'
    url  = 'https://script.google.com/macros/s/AKfycbwYpMAdWRGfhi6OyOdwFRW_jYYr3zKrqkHzpAc-qzawGSOMlK0n/exec'
    atag = '" target="_blank">'
    ftag = "</a>"
    adapter  = msg.robot.adapter
    envelope = msg.envelope
    d = new Date
    year  = d.getFullYear()     # 年（西暦）
    month = d.getMonth() + 1    # 月
    date  = d.getDate()         # 日
    adapter.sendHTML envelope, "#{btag}#{url}#{atag}今日(#{year}年#{month}月#{date}日)#{ftag}"