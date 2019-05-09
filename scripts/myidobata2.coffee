module.exports = (robot) ->
  robot.hear /y/i, (res) ->
    msg.send msg.random ["空いてる時間にさらっとどうぞ http://ebook.itmedia.co.jp/ebook/articles/1310/10/news058.html", 
			 "１年目でも２年目でも、自分がやるべきことは変わりません。http://bizmakoto.jp/bizid/articles/1312/13/news017.html
",
			 "勝負の３～４年目、これからを見据えていきましょう http://bizmakoto.jp/bizid/articles/1312/27/news003.html", 
			"顧客打ち合わせやＷＧにも通じます。心構え的な感じで意識しておくと、この先伸びるかも http://president.jp/articles/-/12508",
			"見とけ @IT - 情報交換スキルを高めるテクニックhttp://www.atmarkit.co.jp/ait/articles/1407/08/news007.html",
			"【閑話休題】仕事の評価＝質×量÷？ http://www.atmarkit.co.jp/ait/articles/1502/03/news022.html 質が良くても、少ない作業ボリュームではダメ
量だけこなしても、質が悪ければダメ 質良くても、時間が(無駄に)かかるとダメ 自分が行うべき・求められている仕事に対して、トータルバランスを意識しましょう",
"「自分は成長していないなあ」と感じたときにやるべきこと ちょうどいい感じの世代向け http://bizmakoto.jp/makoto/articles/1503/09/news038.html"]