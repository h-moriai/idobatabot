module.exports = (robot) ->
  robot.hear /\d{4}[/]\d{2}[/]\d{2}/i, (msg) ->
    btag = '<a href="'
    url  = 'https://script.google.com/a/esm.co.jp/macros/s/AKfycbyE4Tmqv6xtPwSMVxZiqoaP_m94QJYy6Ocggio-YFqTO7jILEBh/dev?InputDate='
    atag = '" target="_blank">'
    ftag = "</a>"
    adapter  = msg.robot.adapter
    envelope = msg.envelope
    adapter.sendHTML envelope, "#{btag}#{url}#{msg.match[0]}#{atag}#{msg.match[0]}#{ftag}"

  robot.hear /now/i, (msg) ->
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
    adapter.sendHTML envelope, "#{btag}#{url}#{atag}Today_#{year}/#{month}/#{date}/#{ftag}"

   robot.hear /weather (.+)/i, (msg) ->
    target = msg.match[1]
    apikey = "84f795e459b830600e9bba62ef978b77"
    params = "q=#{target},jp&appid=#{apikey}&units=metric"
    searchWeather(params, target, msg)

   searchWeather = (url, place, msg) ->
    request = robot.http("http://api.openweathermap.org/data/2.5/weather?#{url}").get()
    stMessage = request (err, res, body) ->
      json = JSON.parse body
      if json['cod'] != 200
        #APIerror
        msg.send ":warning:" + json['message']
        return
      weatherName = json['weather'][0]['main']
      icon = json['weather'][0]['icon']
      temp = json['main']['temp']
      temp_max = json['main']['temp_max']
      temp_min = json['main']['temp_min']
      msg.send "今日の#{place}の天気は「" + weatherName + "」です。\n気温:"+ temp + "℃ 最高気温："  + temp_max+ "℃ 最低気温：" + temp_min + "℃\nhttp://openweathermap.org/img/w/" + icon + ".png"

   robot.hear /(.+)の天気/i, (msg) ->
    target = msg.match[1]
    apikey = "84f795e459b830600e9bba62ef978b77"
    params = "q=#{target},jp&appid=#{apikey}&units=metric"
    searchWeather(params, target, msg)

   searchWeather = (url, place, msg) ->
    request = robot.http("http://api.openweathermap.org/data/2.5/weather?#{url}").get()
    stMessage = request (err, res, body) ->
      json = JSON.parse body
      if json['cod'] != 200
        #APIerror
        msg.send ":warning:" + json['message']
        return
      weatherName = json['weather'][0]['main']
      icon = json['weather'][0]['icon']
      temp = json['main']['temp']
      temp_max = json['main']['temp_max']
      temp_min = json['main']['temp_min']
      msg.send "今日の#{place}の天気は「" + weatherName + "」です。\n気温:"+ temp + "℃ 最高気温："  + temp_max+ "℃ 最低気温：" + temp_min + "℃\nhttp://openweathermap.org/img/w/" + icon + ".png"

   robot.hear /\d{7}\D{1}\d{4}/i, (msg) ->
    yj = msg.match[1]
    http = "http://rest.kegg.jp/find/yj/#{yj}"
    searchYJ(yj, http, msg)

   searchYJ = (url, yj, msg) ->
    request = robot.http("#{url}").get().split(" ")
    DrugYJ  = request[0]
    DrugName = request[1]
    msg.send "#{DrugYJ}/#{DrugName}"
