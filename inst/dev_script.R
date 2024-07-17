raw_text0 = "Who's buried in Grant's tomb?{=Grant ~no one ~Napoleon ~Churchill ~Mother Teresa }"

raw_text1 = "

$CATEGORY: test

::AI-taux_attaque::[html]Pendant la dernière semaine du mois de septembre 2007, 90 personnes d’un petit village du Morbihan (population 650 habitants) participent à un dîner préparé par un épidémiologiste farceur. Au cours des 2 jours suivants, 36 participants développent une infection à <i>Salmonella</i>. Le taux d'attaque parmi les participants est :{
	~0,4%
	~5,5%
	~14,3%
	=40,0%
	~l’information donnée ne permet pas de calculer le taux d’attaque
}"

raw_text2 = "What two people are entombed in Grant's tomb? {
   ~%-100%No one
   ~%50%Grant
   ~%50%Grant's wife
   ~%-100%Grant's father
}"
raw_text3 = "Who's buried in Grant's tomb?{=Grant ~no one ~Napoleon ~Churchill ~Mother Teresa }"


raw = raw_text
raw_text = gsub("(\\{|\\}|::|=|~)", "\n\\1", raw)
text = strsplit(raw_text, "\n")[[1]]


res = qcms()(text)

print(res)



reporter(qcms())(text)
