module.exports = (robot) ->
  robot.hear /\d{4}[/]\d{2}[/]\d{2}/i, (msg) ->
    btag = '<a href="'
    url  = 'https://script.google.com/a/esm.co.jp/macros/s/AKfycbyE4Tmqv6xtPwSMVxZiqoaP_m94QJYy6Ocggio-YFqTO7jILEBh/dev?InputDate='
    atag = '" target="_blank">'
    ftag = "</a>"
    adapter  = msg.robot.adapter
    envelope = msg.envelope
    adapter.sendHTML envelope, "#{btag}#{url}#{msg.match[0]}#{atag}#{msg.match[0]}#{ftag}"

  robot.respond /now/i, (msg) ->
    btag = '<a href="'
    url  = 'https://script.google.com/a/esm.co.jp/macros/s/AKfycbyE4Tmqv6xtPwSMVxZiqoaP_m94QJYy6Ocggio-YFqTO7jILEBh/exec'
    atag = '" target="_blank">'
    ftag = "</a>"
    adapter  = msg.robot.adapter
    envelope = msg.envelope
    d = new Date
    year  = d.getFullYear()     # 年（西暦）
    month = d.getMonth() + 1    # 月
    date  = d.getDate()         # 日
    adapter.sendHTML envelope, "#{btag}#{url}#{atag}Today_#{year}年#{month}月#{date}日#{ftag}"