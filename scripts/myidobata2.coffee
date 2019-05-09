module.exports = (robot) ->
  robot.hear /good/i, (res) ->
    res.send "good!!!"