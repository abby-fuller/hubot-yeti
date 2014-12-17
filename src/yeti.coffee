# Description:
#   Load random yetis from array of yetis
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot yeti me - returns 1 yeti
#   hubot yeti bomb N - returns n yetis
#
# Author:
# abby-fuller

yetis = [
  "http://goo.gl/WgeF6D",
  "http://goo.gl/u2SQ5f",
  "http://goo.gl/LyQ3sI",
  "http://goo.gl/smMmSv",
  "http://goo.gl/ES9e1x",
  "http://goo.gl/Q7mTlv",
  "http://goo.gl/wqhiyM", #yeti crab? idk
  "http://goo.gl/RP8CS6",
  "http://goo.gl/qfl4Hw",
  "http://goo.gl/4zQFbo",
  "http://goo.gl/Nn8caF",
  "http://goo.gl/ZuQG5S",
  "http://goo.gl/cTTfAp",
  "http://goo.gl/zTRlFK",
  "http://goo.gl/dr3B3j",
  "http://goo.gl/ABDXeL",
  "http://goo.gl/mvAd3W",
  "http://goo.gl/I1hHlS",
  "http://goo.gl/LUl82E",
  "http://goo.gl/sAQjkx",
  "http://goo.gl/Fk609l",
  "http://goo.gl/iDoSAr"
]

module.exports = (robot) ->
  robot.respond /yeti me/i, (msg) ->
    msg.send yetis[Math.floor(Math.random()*yetis.length)]

  robot.respond /yeti bomb( (\d+))?/i, (msg) ->
    count = msg.match[2] || 5
    for i in [1..count] by 1
      msg.send yetis[Math.floor(Math.random()*yetis.length)]

