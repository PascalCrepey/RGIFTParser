# building a simple quiz object with one question

    Code
      print(quiz)
    Output
      Quiz: 
      Question: AI-taux_attaque ( No category )
       [html]Pendant la dernière semaine du mois de   septembre 2007, 90 personnes d’un petit village du Morbihan (population 650   habitants) participent à un dîner préparé par un épidémiologiste farceur.   Au cours des 2 jours suivants, 36 participants développent une infection à   <i>Salmonella</i>. Le taux d'attaque parmi les participants est : 
      Answers: 
      	0,4% 	 (False)
      	5,5% 	 (False)
      	14,3% 	 (False)
      	40,0% 	 (True)
      	l’information donnée ne permet pas de calculer le taux d’attaque (False)
      Feedback:  Question issue du cours IDEA 
      Quiz containing  1  question 

# building a simple quiz object with two questions

    Code
      print(quiz)
    Output
      Quiz: 
      Question: AI-taux_attaque ( No category )
       [html]Pendant la dernière semaine du mois de   septembre 2007, 90 personnes d’un petit village du Morbihan (population 650   habitants) participent à un dîner préparé par un épidémiologiste farceur.   Au cours des 2 jours suivants, 36 participants développent une infection à   <i>Salmonella</i>. Le taux d'attaque parmi les participants est : 
      Answers: 
      	0,4% 	 (False)
      	5,5% 	 (False)
      	14,3% 	 (False)
      	40,0% 	 (True)
      	l’information donnée ne permet pas de calculer le taux d’attaque (False)
      Feedback:  Question issue du cours IDEA 
      Question: AI-types_signaux ( No category )
       Quels types de signaux alimentent le dispositif de veille sanitaire ? 
      Answers: 
      	Les signaux issus des surveillances sanitaires et environnementales  (True [ 33.33333 %])
      	Les signalements d’évènements sanitaires inhabituels  (True [ 33.33333 %])
      	Les évènements ou information repérées dans la presse scientifique, les réseaux de veille internationaux ou les médias  (True [ 33.33333 %])
      	Les relevés d’écoutes téléphoniques  (False [ -50 %])
      	Les données de recensement de l’INSEE (False [ -50 %])
      Feedback:  Question issue du cours IDEA 
      Quiz containing  2  questions 

# Build quiz from file with multiple questions

    Code
      print(quiz)
    Output
      Quiz: 
      Question: AI-taux_attaque ( IDEA/Alerte-Investigation )
       [html]Pendant la dernière semaine du mois de septembre 2007, 90 personnes d’un petit village du Morbihan (population 650 habitants) participent à un dîner préparé par un épidémiologiste farceur. Au cours des 2 jours suivants, 36 participants développent une infection à <i>Salmonella</i>. Le taux d'attaque parmi les participants est \: 
      Answers: 
      	0,4%	 (False)
      	5,5%	 (False)
      	14,3%	 (False)
      	40,0%	 (True)
      	l’information donnée ne permet pas de calculer le taux d’attaque (False)
      Question: AI-risque_relatif ( IDEA/Alerte-Investigation )
       [html]Un questionnaire a été administré à tous les participants d’un diner dont certains participants sont malades. Il apparait que 30 malades et 20 non-malades ont consommé de la salade piémontaise tandis que 2 malades et 34 non-malades n’en ont pas consommé. Quel est le risque relatif d’être malade si l’on a consommé cette salade ? 
      Answers: 
      	0,4	 (False)
      	1,5	 (False)
      	4,0	 (True)
      	5,5	 (False)
      	8,3 (False)
      Question: AI-PR-definition_cas ( IDEA/Alerte-Investigation )
       [html] Lors d’une épidémie de rougeole survenue en juin 2008 dans une école privée de Bretagne Nord, la définition de cas suivante a été adoptée \: tout enfant de l’école ayant présenté, en juin 2008, une fièvre supérieure à 38°5C et une éruption maculo-papuleuse et des anticorps IgM anti rougeole élevés dans le sérum. Cette définition est \: 
      Answers: 
      	spécifique	 (True)
      	exhaustive	 (False)
      	pénible	 (False)
      	sensible	 (False)
      	prédictive (False)
      Question: AI-types_signaux ( IDEA/Alerte-Investigation )
       Quels types de signaux alimentent le dispositif de veille sanitaire ? 
      Answers: 
      	Les signaux issus des surveillances sanitaires et environnementales (True [ 33.33333 %])
      	Les signalements d’évènements sanitaires inhabituels (True [ 33.33333 %])
      	Les évènements ou information repérées dans la presse scientifique, les réseaux de veille internationaux ou les médias (True [ 33.33333 %])
      	Les relevés d’écoutes téléphoniques (False [ -50 %])
      	Les données de recensement de l’INSEE (False [ -50 %])
      Question: AI-alerte_sanitaire ( IDEA/Alerte-Investigation )
       Quand considère-t-on qu’un signal reçu par la veille sanitaire devient une alerte sanitaire ? 
      Answers: 
      	Quand le signal vient d’une source réputée fiable	 (False)
      	Quand le signal est vérifié (False)
      	Quand le signal est validé pour son impact sanitaire potentiel ou avéré (False)
      	Quand le signal est vérifié et validé pour son impact sanitaire potentiel ou avéré (True)
      	Quand le signal est inhabituel (False)
      Question: AI-actions_signal ( IDEA/Alerte-Investigation )
       Vous recevez au point focal de l’ARS, le message d’un maire signalant la survenue de trois cas de leucémies dans sa commune située à côté d’une centrale nucléaire. Quelles sont vos premières actions ? 
      Answers: 
      	Vous alertez le directeur général de l’ARS, le préfet et l‘exploitant de la centrale nucléaire (False [ -50 %])
      	Vous accusez réception de ce message au maire (True [ 33.33333 %])
      	Vous rappelez le maire pour compléter la fiche de signalement (True [ 33.33333 %])
      	Vous rassemblez des informations auprès des professionnels de santé concernés afin d’obtenir la confirmation du diagnostic médical de ces trois cas de leucémies (True [ 33.33333 %])
      	Vous prévenez la presse pour qu’elle alerte la population (False [ -50 %])
      Question: Schema-PR-transversale ( IDEA/Alerte-Investigation )
       [html]Une enquête transversale est menée, au mois de juin, dans la région Auvergne où un dépistage est réalisé chez des sujets choisis aléatoirement. Parmi les 5 000 sujets inclus dans l’enquête, 250 présentent un diabète. La proportion 250/5 000 représente \: 
      Answers: 
      	l’incidence cumulée	 (False)
      	le taux d’attaque	 (False)
      	la densité d’incidence	 (False)
      	la prévalence	 (True)
      	la létalité (False)
      Question: Schema-PR-prevalence ( IDEA/Alerte-Investigation )
       [html]Snowtown est une communauté de 200 000 personnes. En 1960, on a enregistré 2 000 décès, <u>toutes</u> causes réunies. En 1960, 600 cas de tuberculose ont été recensés dont 400 hommes et 200 femmes. Pendant la même année, 120 décès dus à la tuberculose ont été rapportés dont 100 hommes. Quelle est la prévalence de la tuberculose en 1960 ? 
      Answers: 
      	0.6 pour 1 000	 (False)
      	3 pour 1 000	 (True)
      	30 pour 1 000	 (False)
      	60 pour 1 000	 (False)
      	non calculable (False)
      Question: Schema-PR-mortalite_brut ( IDEA/Alerte-Investigation )
       [html] Snowtown est une communauté de 200 000 personnes. En 1960, on a enregistré 2 000 décès, <u>toutes</u> causes réunies. En 1960, 600 cas de tuberculose ont été recensés dont 400 hommes et 200 femmes. Pendant la même année, 120 décès dus à la tuberculose ont été rapportés dont 100 hommes. <br />Quel est le taux de mortalité brut en 1960? 
      Answers: 
      	0,6 pour 1 000	 (False)
      	3 pour 1 000	 (False)
      	10 pour 1 000	 (True)
      	100 pour 1 000	 (False)
      	non calculable (False)
      Question: Schema-mortalite_prop ( IDEA/Alerte-Investigation )
       [html]Snowtown est une communauté de 200 000 personnes. En 1960, on a enregistré 2 000 décès, toutes causes réunies. En 1960, 600 cas de tuberculose ont été recensés dont 400 hommes et 200 femmes. Pendant la même année, 120 décès dus à la tuberculose ont été rapportés dont 100 hommes.<br/>Quelle est la mortalité proportionnelle due à la tuberculose ? 
      Answers: 
      	3 pour 100	 (False)
      	6 pour 100	 (True)
      	20 pour 100	 (False)
      	30 pour 100	 (False)
      	non calculable (False)
      Question: Schema-letalite ( IDEA/Alerte-Investigation )
       [html]Snowtown est une communauté de 200 000 personnes. En 1960, on a enregistré 2 000 décès, toutes causes réunies. En 1960, 600 cas de tuberculose ont été recensés dont 400 hommes et 200 femmes. Pendant la même année, 120 décès dus à la tuberculose ont été rapportés dont 100 hommes.<br/>Quelle est la létalité de la tuberculose chez les hommes ?<br/> 
      Answers: 
      	25 pour 100	 (True)
      	6 pour 100	 (False)
      	20 pour 100	 (False)
      	2 pour 100	 (False)
      	non calculable (False)
      Question: Schema-PR-def_epi ( IDEA/Alerte-Investigation )
       [html]Dans la définition d’épidémiologie, les termes « distribution » et « déterminants » se rapportent à \: 
      Answers: 
      	diffusion de l’information à ceux qui en ont besoin	 (False)
      	connaissances, attitudes et pratiques relatives à la santé	 (False)
      	fréquences, caractéristiques et causes des phénomènes de santé	 (True)
      	services de santé publique et ressources allouées à ceux-ci	 (False)
      	caractéristiques des tests de dépistage (False)
      Question: Schema-PR-def_epi_desc ( IDEA/Alerte-Investigation )
       [html]L’épidémiologie descriptive permet de répondre aux interrogations suivantes SAUF \: 
      Answers: 
      	quoi ?	 (False)
      	qui ?	 (False)
      	pourquoi ?	 (True)
      	quand ?	 (False)
      	où ? (False)
      Question: Schema-PR-Identifier_cas_temoin ( IDEA/Alerte-Investigation )
       [html]Une étude a été réalisée auprès de 150 personnes atteintes d’un cancer de la vessie qui sont comparées à 300 personnes non atteintes de cancer de la vessie et provenant de la même population que les précédentes. L’ensemble des sujets a été interrogé pour déterminer leur exposition antérieure au tabagisme passif. Cette étude est un exemple d’une \: 
      Answers: 
      	étude de cohorte	 (False)
      	étude transversale	 (False)
      	essai clinique	 (False)
      	étude cas-témoin	 (True)
      	étude écologique (False)
      Question: Schema-PR-RR ( IDEA/Alerte-Investigation )
       [html]Dans une étude sur le cancer de la vessie et l’usage du tabac chez les hommes de Snowtown, on obtient les données suivantes \:<br>- chez les hommes fumeurs, le taux de cancer de la vessie est estimé à 69,0 pour 100 000 personnes-années.<br>- chez les hommes non fumeurs, le taux de cancer de la vessie est estimé à 37,4 pour 100 000 personnes-années. <br>Quel est le risque relatif de cancer de la vessie associé au tabagisme ? 
      Answers: 
      	31,6	 (False)
      	1,84	 (True)
      	0,07 %	 (False)
      	0,47	 (False)
      	non calculable (False)
      Question: Schema-Fraction_etio ( IDEA/Alerte-Investigation )
       [html]Dans une étude sur le cancer de la vessie et l’usage du tabac chez les hommes de Snowtown, on obtient les données suivantes \:- chez les hommes fumeurs, le taux de cancer de la vessie est estimé à 69,0 pour 100 000 personnes-années- chez les hommes non fumeurs, le taux de cancer de la vessie est estimé à 37,4 pour 100 000 personnes-années <br>Quelle est la fraction étiologique de cancer de la vessie attribuable à la cigarette chez les fumeurs ? 
      Answers: 
      	21,6	 (False)
      	0,84	 (False)
      	0,46	 (True)
      	46	 (False)
      	non calculable (False)
      Question: Schema-Causalite ( IDEA/Alerte-Investigation )
       [html]Pour affirmer la nature causale d’un facteur de risque dans la survenue d’une maladie, il suffit \: 
      Answers: 
      	d’observer une fréquence élevée de l’exposition à ce facteur chez les cas	 (False)
      	d’observer une absence d’exposition à ce facteur chez les sujets non malades	 (False)
      	d’observer une association significative entre le facteur de risque et la maladie (p<0,001)	 (False)
      	de savoir si l’exposition à ce facteur est antérieure à la survenue de la maladie	 (False)
      	aucune des réponses proposées (True)
      Question: Schema-PR-Temoins ( IDEA/Alerte-Investigation )
       [html]Dans une étude cas-témoin, un bon groupe témoin doit \: 
      Answers: 
      	<p>être représentatif de la population dont sont issus les cas</p>	 (True [ 50 %])
      	<p>appartenir à une population différente de celle dont sont issus les cas</p>	 (False [ -50 %])
      	<p>être choisi en fonction de l’exposition</p>	 (False [ -50 %])
      	<p>avoir la possibilité de développer la maladie</p>	 (True [ 50 %])
      	<p>savoir passer le relai !</p> (False)
      Question: Stat-PR-perc_augment ( IDEA/Alerte-Investigation )
       [html]En 2006, 400 cas de rougeole ont été identifiés dans un centre de santé. En 2007, ce nombre est de 475. Quel est le pourcentage d’augmentation du nombre de cas de rougeole? 
      Answers: 
      	19 %	 (True)
      	84 %	 (False)
      	119 %	 (False)
      	16 %	 (False)
      	116 % (False)
      Question: Stat-PR-signif_prevalence ( IDEA/Alerte-Investigation )
       [html]La prévalence d’une maladie a été comparée sur deux échantillons issus d’une population A et d’une population B. Les deux mesures donnent respectivement une prévalence de 27% sur l’échantillon A et de 35% sur l’échantillon B. Le test statistique de comparaison se conclut par l’expression \: p &lt; 0,02. Si alpha \= 5%, cela signifie que \: 
      Answers: 
      	la différence entre les deux prévalences n’est pas significative	 (False [ -33.33333 %])
      	la différence entre les deux prévalences est significative	 (True [ 50 %])
      	la différence réelle entre les prévalences des deux populations est inférieure à 2%	 (False [ -33.33333 %])
      	la différence réelle entre les prévalences des deux populations est inférieure à 5%	 (False [ -33.33333 %])
      	il y a moins de 2 chances sur 100 d’observer un tel résultat si les deux populations dont sont issus les deux échantillons ont une prévalence identique (True [ 50 %])
      Question: Stat-PR-distrib ( IDEA/Alerte-Investigation )
       [html]Lors d’une épidémie dans un village A, les cas de rougeole enregistrés parmi les enfants se répartissent selon les âges suivants \:<br>1 an\: 1 cas, 2 ans\: 6 cas, 3 ans\: 4 cas, 4 ans\: 3 cas, 4 ans\: 3 cas, 5 ans\: 1 cas, 8 ans\: 1 cas, 10 ans\: 1 cas, 14 ans\: 1 cas.<br>Quelle est la forme de la distribution ? 
      Answers: 
      	normale	 (False)
      	étirée à droite	 (True)
      	étirée à gauche	 (False)
      	bi-modale	 (False)
      	aléatoire (False)
      Question: Stat-PR-tendance_centrale ( IDEA/Alerte-Investigation )
       [html]Pour une distribution étirée d’un côté, quelle est la mesure de tendance centrale la plus appropriée ? 
      Answers: 
      	variance	 (False)
      	moyenne	 (False)
      	écart type	 (False)
      	médiane	 (True)
      	mode (False)
      Question: Stat-PR-intervalle ( IDEA/Alerte-Investigation )
       [html]Lors d’un sondage effectué sur un échantillon de 100 sujets représentatif de la population des cyclistes de la ville de Rennes, on constate que 28% d’entre eux portent habituellement un casque. L’intervalle de confiance à 95% est de plus ou moins 6%. Cet intervalle signifie que la proportion de l’ensemble des cyclistes de Rennes portant un casque \: 
      Answers: 
      	<p>est certainement comprise entre 22% et 34%</p>	 (False)
      	<p>est comprise entre 23% et 33% avec 6% de chance de se tromper</p>	 (False)
      	<p>est comprise entre 22% et 34% avec 5% de chance de se tromper</p>	 (True)
      	<p>est supérieure à 22% avec 5% de chance de se tromper</p>	 (False)
      	<p>a 95% de chance d’être égale à 28%</p> (False)
      Question: Stat-graphique ( IDEA/Alerte-Investigation )
       [html]Vous devez présenter les taux d’incidence annuels de tuberculose par catégorie socio professionnelle des cas pour l’année 2009 pour votre pays. Quelle représentation graphique allez vous utiliser ? 
      Answers: 
      	Histogramme	 (False)
      	Camembert	 (False)
      	Saint-Paulin	 (False)
      	Diagramme en barre	 (True)
      	Nuage de points (False)
      Question: Stat-facteur_confusion ( IDEA/Alerte-Investigation )
       [html]Dans une étude cas témoin, pour vérifier l’existence d’une association entre une exposition et une maladie, on étudie l’influence d’un tiers facteur sur cette relation. Parmi les conditions suivantes, quelles sont celles qui doivent être remplies pour que ce facteur soit un facteur de confusion \: 
      Answers: 
      	le tiers facteur est un facteur intermédiaire	 (False [ -33.33333 %])
      	le tiers facteur est associé à la maladie indépendamment de l’exposition	 (True [ 50 %])
      	les OR calculés dans chaque strate d’exposition au tiers facteur diffèrent entre eux	 (False [ -33.33333 %])
      	l’OR ajusté de Mantel Haenszel est identique à l’OR brut	 (False [ -33.33333 %])
      	l’OR ajusté de Mantel Haenszel est différent de l’OR brut (True [ 50 %])
      Question: Surv-PR-incidence_cumulée ( IDEA/Alerte-Investigation )
       [html]Durant l’année 2007, 3 500 nouveaux cas de rougeole ont été enregistrés par le système de surveillance de la région X qui compte une population de 2 000 000 habitants. Le nombre 3 500/2 000 000 représente \: 
      Answers: 
      	la prévalence	 (False)
      	l’incidence cumulée	 (True)
      	la spécificité	 (False)
      	la létalité	 (False)
      	l’efficacité vaccinale (False)
      Question: Surv-objectifs ( IDEA/Alerte-Investigation )
       [html]Quels sont les objectifs de la surveillance en santé publique ? 
      Answers: 
      	collecter des données sur la population	 (False [ -100 %])
      	décrire la dynamique temporospatiale des maladies	 (True [ 25 %])
      	éclairer les décisions de santé publique grâce aux données sanitaires	 (True [ 25 %])
      	détecter l’émergence de nouvelles pathologies et la survenue des phénomènes épidémiques	 (True [ 25 %])
      	évaluer les politiques et stratégies de contrôle et de prévention des maladies (True [ 25 %])
      Question: Surv-validation ( IDEA/Alerte-Investigation )
       La validation des données de surveillance...\: 
      Answers: 
      	...conditionne l’analyse des données. (True [ 33.33333 %])
      	...est une étape préalable à l’analyse des données. (True [ 33.33333 %])
      	...repose sur l’absence d’une définition de cas. (False [ -50 %])
      	...permet de confirmer les cas. (True [ 33.33333 %])
      	...est une étape optionnelle en situation d’urgence. (False [ -50 %])
      Question: Surv-denominateur ( IDEA/Alerte-Investigation )
       La présence d’un dénominateur... \: 
      Answers: 
      	...permet de calculer des taux et des proportions. (True [ 33.33333 %])
      	...permet la standardisation des taux. (True [ 33.33333 %])
      	...facilite la comparaison des populations et des territoires (True [ 33.33333 %])
      	...est systématique dans toutes les données de surveillance (False [ -50 %])
      	...est systématiquement nécessaire pour analyser des données de surveillance. (False [ -50 %])
      Question: Enquete-PR-types ( IDEA/Alerte-Investigation )
       [html]Une enquête est menée dans la montagne Bourbonnaise où un dépistage est réalisé chez des sujets choisis aléatoirement. Parmi les 1500 sujets inclus dans l’enquête, 60 présentent un diabète. Cette enquête est un exemple d’ \: 
      Answers: 
      	étude cas-témoins	 (False)
      	étude de cohorte	 (False)
      	étude transversale	 (True)
      	étude écologique	 (False)
      	essai clinique (False)
      Question: Enquete-depistage ( IDEA/Alerte-Investigation )
       [html]Un test de dépistage du cancer du sein a été effectué chez 600 femmes atteintes d’un cancer du sein (confirmé par biopsie) et chez 600 femmes non atteintes. Les résultats du test ont été positifs chez 150 femmes atteintes d’un cancer et chez 50 femmes non atteintes.Quelle est la sensibilité du test de dépistage ? 
      Answers: 
      	75 %	 (False)
      	25 %	 (True)
      	55 %	 (False)
      	92 %	 (False)
      	non calculable (False)
      Question: Enquete-specificite ( IDEA/Alerte-Investigation )
       [html]Un test de dépistage du cancer du sein a été effectué chez 600 femmes atteintes d’un cancer du sein (confirmé par biopsie) et chez 600 femmes non atteintes. Les résultats du test ont été positifs chez 150 femmes atteintes d’un cancer et chez 50 femmes non atteintes.Quelle est la spécificité du test de dépistage ? 
      Answers: 
      	75 %	 (False)
      	25 %	 (False)
      	55 %	 (False)
      	92 %	 (True)
      	non calculable (False)
      Question: Enquete-vpp ( IDEA/Alerte-Investigation )
       [html]Un test de dépistage du cancer du sein a été effectué chez 600 femmes atteintes d’un cancer du sein (confirmé par biopsie) et chez 600 femmes non atteintes. Les résultats du test ont été positifs chez 150 femmes atteintes d’un cancer et chez 50 femmes non atteintes.Quelle est la valeur prédictive positive du test de dépistage? 
      Answers: 
      	75 %	 (True)
      	25 %	 (False)
      	55 %	 (False)
      	92 %	 (False)
      	non calculable (False)
      Question: Enquete-vpn ( IDEA/Alerte-Investigation )
       [html]Un test de dépistage du cancer du sein a été effectué chez 600 femmes atteintes d’un cancer du sein (confirmé par biopsie) et chez 600 femmes non atteintes. Les résultats du test ont été positifs chez 150 femmes atteintes d’un cancer et chez 50 femmes non atteintes.Quelle est la valeur prédictive négative ? 
      Answers: 
      	75%	 (False)
      	25%	 (False)
      	55%	 (True)
      	92%	 (False)
      	non calculable (False)
      Question: Epd_Vac-efficacite ( IDEA/Alerte-Investigation )
       [html] Les résultats d’une enquête de cohorte réalisée lors d’une épidémie de rougeole au Burundi donnent les résultats suivant\: Parmi les vaccinés\: 40 cas de rougeole, 130 sans rougeole; parmi les non vaccinés\: 92 cas de rougeole, 122 sans rougeole. Quelle est l’efficacité du vaccin contre la rougeole ? 
      Answers: 
      	4%	 (False)
      	14%	 (False)
      	31%	 (False)
      	45%	 (True)
      	71% (False)
      Question: Epd_Vac-suivi_prog_vac ( IDEA/Alerte-Investigation )
       Parmi les activités suivantes, lesquelles permettent de suivre l’implémentation d’un programme de vaccination \: 
      Answers: 
      	La mesure de l’efficacité vaccinale dans la population visée par les recommandations. (True [ 25 %])
      	La mesure de la couverture vaccinale. (True [ 25 %])
      	La surveillance des effets secondaires. (True [ 25 %])
      	La surveillance des maladies évitables par les vaccinations. (True [ 25 %])
      	Le contrôle des vaccinations obligatoires. (False [ -100 %])
      Question: Epd_Vac-couverture_vac ( IDEA/Alerte-Investigation )
       Quelles sont les affirmations exactes concernant la couverture vaccinale \: 
      Answers: 
      	A efficacité constante, la part relative des échecs vaccinaux parmi les cas diminue lorsque la couverture vaccinale  augmente. (False [ -50 %])
      	Elle concerne uniquement les vaccinations du calendrier vaccinal de l’enfant. (False [ -50 %])
      	Elle nécessite une estimation de la population concernée par la vaccination. (True [ 33.33333 %])
      	Elle peut être estimée par des données de remboursement ou de vente. (True [ 33.33333 %])
      	A efficacité vaccinale constante, la proportion de cas vaccinés augmente lorsque la couverture vaccinale augmente. (True [ 33.33333 %])
      Question: Envir-preoccupations ( IDEA/Alerte-Investigation )
       Pour répondre aux préoccupations de la population en santé-environnement ou en santé en milieu professionnel \: 
      Answers: 
      	Il n’est pas nécessaire de consulter la population concernée mais de créer un groupe de travail uniquement avec les professionnels de référence (False)
      	Il faut vérifier et valider le signal (True)
      	Il est important d’engager une réflexion pour définir le(s) outils(s) pertinent(s) à mettre en place (True)
      	il est nécessaire de faire une étude épidémiologique (False)
      Question: Envir-lien ( IDEA/Alerte-Investigation )
       Le lien entre événement de santé et qualité des milieux de vie est difficile à établir car nous travaillons sur \: 
      Answers: 
      	Des risques faibles (True [ 33.33333 %])
      	Une relation avec l’environnement difficile à mettre en évidence (True [ 33.33333 %])
      	Des délais d’apparition des effets sur la santé par rapport à l’exposition qui sont trop courts (False [ -50 %])
      	Des expositions multiples (True [ 33.33333 %])
      	Des populations non-coopérantes (False [ -50 %])
      Quiz containing  39  questions 

---

    Code
      print(quiz)
    Output
      Quiz: 
      Question: AI-taux_attaque ( IDEA/Alerte-Investigation )
       [html]Pendant la dernière semaine du mois de septembre 2007, 90 personnes d’un petit village du Morbihan (population 650 habitants) participent à un dîner préparé par un épidémiologiste farceur. Au cours des 2 jours suivants, 36 participants développent une infection à <i>Salmonella</i>. Le taux d'attaque parmi les participants est \: 
      Answers: 
      	0,4%	 (False)
      	5,5%	 (False)
      	14,3%	 (False)
      	40,0%	 (True)
      	l’information donnée ne permet pas de calculer le taux d’attaque (False)
      Question: AI-risque_relatif ( IDEA/Alerte-Investigation )
       [html]Un questionnaire a été administré à tous les participants d’un diner dont certains participants sont malades. Il apparait que 30 malades et 20 non-malades ont consommé de la salade piémontaise tandis que 2 malades et 34 non-malades n’en ont pas consommé. Quel est le risque relatif d’être malade si l’on a consommé cette salade ? 
      Answers: 
      	0,4	 (False)
      	1,5	 (False)
      	4,0	 (True)
      	5,5	 (False)
      	8,3 (False)
      Question: AI-PR-definition_cas ( IDEA/Alerte-Investigation )
       [html] Lors d’une épidémie de rougeole survenue en juin 2008 dans une école privée de Bretagne Nord, la définition de cas suivante a été adoptée \: tout enfant de l’école ayant présenté, en juin 2008, une fièvre supérieure à 38°5C et une éruption maculo-papuleuse et des anticorps IgM anti rougeole élevés dans le sérum. Cette définition est \: 
      Answers: 
      	spécifique	 (True)
      	exhaustive	 (False)
      	pénible	 (False)
      	sensible	 (False)
      	prédictive (False)
      Question: AI-types_signaux ( IDEA/Alerte-Investigation )
       Quels types de signaux alimentent le dispositif de veille sanitaire ? 
      Answers: 
      	Les signaux issus des surveillances sanitaires et environnementales (True [ 33.33333 %])
      	Les signalements d’évènements sanitaires inhabituels (True [ 33.33333 %])
      	Les évènements ou information repérées dans la presse scientifique, les réseaux de veille internationaux ou les médias (True [ 33.33333 %])
      	Les relevés d’écoutes téléphoniques (False [ -50 %])
      	Les données de recensement de l’INSEE (False [ -50 %])
      Question: AI-alerte_sanitaire ( IDEA/Alerte-Investigation )
       Quand considère-t-on qu’un signal reçu par la veille sanitaire devient une alerte sanitaire ? 
      Answers: 
      	Quand le signal vient d’une source réputée fiable	 (False)
      	Quand le signal est vérifié (False)
      	Quand le signal est validé pour son impact sanitaire potentiel ou avéré (False)
      	Quand le signal est vérifié et validé pour son impact sanitaire potentiel ou avéré (True)
      	Quand le signal est inhabituel (False)
      Question: AI-actions_signal ( IDEA/Alerte-Investigation )
       Vous recevez au point focal de l’ARS, le message d’un maire signalant la survenue de trois cas de leucémies dans sa commune située à côté d’une centrale nucléaire. Quelles sont vos premières actions ? 
      Answers: 
      	Vous alertez le directeur général de l’ARS, le préfet et l‘exploitant de la centrale nucléaire (False [ -50 %])
      	Vous accusez réception de ce message au maire (True [ 33.33333 %])
      	Vous rappelez le maire pour compléter la fiche de signalement (True [ 33.33333 %])
      	Vous rassemblez des informations auprès des professionnels de santé concernés afin d’obtenir la confirmation du diagnostic médical de ces trois cas de leucémies (True [ 33.33333 %])
      	Vous prévenez la presse pour qu’elle alerte la population (False [ -50 %])
      Question: Schema-PR-transversale ( IDEA/Alerte-Investigation )
       [html]Une enquête transversale est menée, au mois de juin, dans la région Auvergne où un dépistage est réalisé chez des sujets choisis aléatoirement. Parmi les 5 000 sujets inclus dans l’enquête, 250 présentent un diabète. La proportion 250/5 000 représente \: 
      Answers: 
      	l’incidence cumulée	 (False)
      	le taux d’attaque	 (False)
      	la densité d’incidence	 (False)
      	la prévalence	 (True)
      	la létalité (False)
      Question: Schema-PR-prevalence ( IDEA/Alerte-Investigation )
       [html]Snowtown est une communauté de 200 000 personnes. En 1960, on a enregistré 2 000 décès, <u>toutes</u> causes réunies. En 1960, 600 cas de tuberculose ont été recensés dont 400 hommes et 200 femmes. Pendant la même année, 120 décès dus à la tuberculose ont été rapportés dont 100 hommes. Quelle est la prévalence de la tuberculose en 1960 ? 
      Answers: 
      	0.6 pour 1 000	 (False)
      	3 pour 1 000	 (True)
      	30 pour 1 000	 (False)
      	60 pour 1 000	 (False)
      	non calculable (False)
      Question: Schema-PR-mortalite_brut ( IDEA/Alerte-Investigation )
       [html] Snowtown est une communauté de 200 000 personnes. En 1960, on a enregistré 2 000 décès, <u>toutes</u> causes réunies. En 1960, 600 cas de tuberculose ont été recensés dont 400 hommes et 200 femmes. Pendant la même année, 120 décès dus à la tuberculose ont été rapportés dont 100 hommes. <br />Quel est le taux de mortalité brut en 1960? 
      Answers: 
      	0,6 pour 1 000	 (False)
      	3 pour 1 000	 (False)
      	10 pour 1 000	 (True)
      	100 pour 1 000	 (False)
      	non calculable (False)
      Question: Schema-mortalite_prop ( IDEA/Alerte-Investigation )
       [html]Snowtown est une communauté de 200 000 personnes. En 1960, on a enregistré 2 000 décès, toutes causes réunies. En 1960, 600 cas de tuberculose ont été recensés dont 400 hommes et 200 femmes. Pendant la même année, 120 décès dus à la tuberculose ont été rapportés dont 100 hommes.<br/>Quelle est la mortalité proportionnelle due à la tuberculose ? 
      Answers: 
      	3 pour 100	 (False)
      	6 pour 100	 (True)
      	20 pour 100	 (False)
      	30 pour 100	 (False)
      	non calculable (False)
      Question: Schema-letalite ( IDEA/Alerte-Investigation )
       [html]Snowtown est une communauté de 200 000 personnes. En 1960, on a enregistré 2 000 décès, toutes causes réunies. En 1960, 600 cas de tuberculose ont été recensés dont 400 hommes et 200 femmes. Pendant la même année, 120 décès dus à la tuberculose ont été rapportés dont 100 hommes.<br/>Quelle est la létalité de la tuberculose chez les hommes ?<br/> 
      Answers: 
      	25 pour 100	 (True)
      	6 pour 100	 (False)
      	20 pour 100	 (False)
      	2 pour 100	 (False)
      	non calculable (False)
      Question: Schema-PR-def_epi ( IDEA/Alerte-Investigation )
       [html]Dans la définition d’épidémiologie, les termes « distribution » et « déterminants » se rapportent à \: 
      Answers: 
      	diffusion de l’information à ceux qui en ont besoin	 (False)
      	connaissances, attitudes et pratiques relatives à la santé	 (False)
      	fréquences, caractéristiques et causes des phénomènes de santé	 (True)
      	services de santé publique et ressources allouées à ceux-ci	 (False)
      	caractéristiques des tests de dépistage (False)
      Question: Schema-PR-def_epi_desc ( IDEA/Alerte-Investigation )
       [html]L’épidémiologie descriptive permet de répondre aux interrogations suivantes SAUF \: 
      Answers: 
      	quoi ?	 (False)
      	qui ?	 (False)
      	pourquoi ?	 (True)
      	quand ?	 (False)
      	où ? (False)
      Question: Schema-PR-Identifier_cas_temoin ( IDEA/Alerte-Investigation )
       [html]Une étude a été réalisée auprès de 150 personnes atteintes d’un cancer de la vessie qui sont comparées à 300 personnes non atteintes de cancer de la vessie et provenant de la même population que les précédentes. L’ensemble des sujets a été interrogé pour déterminer leur exposition antérieure au tabagisme passif. Cette étude est un exemple d’une \: 
      Answers: 
      	étude de cohorte	 (False)
      	étude transversale	 (False)
      	essai clinique	 (False)
      	étude cas-témoin	 (True)
      	étude écologique (False)
      Question: Schema-PR-RR ( IDEA/Alerte-Investigation )
       [html]Dans une étude sur le cancer de la vessie et l’usage du tabac chez les hommes de Snowtown, on obtient les données suivantes \:<br>- chez les hommes fumeurs, le taux de cancer de la vessie est estimé à 69,0 pour 100 000 personnes-années.<br>- chez les hommes non fumeurs, le taux de cancer de la vessie est estimé à 37,4 pour 100 000 personnes-années. <br>Quel est le risque relatif de cancer de la vessie associé au tabagisme ? 
      Answers: 
      	31,6	 (False)
      	1,84	 (True)
      	0,07 %	 (False)
      	0,47	 (False)
      	non calculable (False)
      Question: Schema-Fraction_etio ( IDEA/Alerte-Investigation )
       [html]Dans une étude sur le cancer de la vessie et l’usage du tabac chez les hommes de Snowtown, on obtient les données suivantes \:- chez les hommes fumeurs, le taux de cancer de la vessie est estimé à 69,0 pour 100 000 personnes-années- chez les hommes non fumeurs, le taux de cancer de la vessie est estimé à 37,4 pour 100 000 personnes-années <br>Quelle est la fraction étiologique de cancer de la vessie attribuable à la cigarette chez les fumeurs ? 
      Answers: 
      	21,6	 (False)
      	0,84	 (False)
      	0,46	 (True)
      	46	 (False)
      	non calculable (False)
      Question: Schema-Causalite ( IDEA/Alerte-Investigation )
       [html]Pour affirmer la nature causale d’un facteur de risque dans la survenue d’une maladie, il suffit \: 
      Answers: 
      	d’observer une fréquence élevée de l’exposition à ce facteur chez les cas	 (False)
      	d’observer une absence d’exposition à ce facteur chez les sujets non malades	 (False)
      	d’observer une association significative entre le facteur de risque et la maladie (p<0,001)	 (False)
      	de savoir si l’exposition à ce facteur est antérieure à la survenue de la maladie	 (False)
      	aucune des réponses proposées (True)
      Question: Schema-PR-Temoins ( IDEA/Alerte-Investigation )
       [html]Dans une étude cas-témoin, un bon groupe témoin doit \: 
      Answers: 
      	<p>être représentatif de la population dont sont issus les cas</p>	 (True [ 50 %])
      	<p>appartenir à une population différente de celle dont sont issus les cas</p>	 (False [ -50 %])
      	<p>être choisi en fonction de l’exposition</p>	 (False [ -50 %])
      	<p>avoir la possibilité de développer la maladie</p>	 (True [ 50 %])
      	<p>savoir passer le relai !</p> (False)
      Question: Stat-PR-perc_augment ( IDEA/Alerte-Investigation )
       [html]En 2006, 400 cas de rougeole ont été identifiés dans un centre de santé. En 2007, ce nombre est de 475. Quel est le pourcentage d’augmentation du nombre de cas de rougeole? 
      Answers: 
      	19 %	 (True)
      	84 %	 (False)
      	119 %	 (False)
      	16 %	 (False)
      	116 % (False)
      Question: Stat-PR-signif_prevalence ( IDEA/Alerte-Investigation )
       [html]La prévalence d’une maladie a été comparée sur deux échantillons issus d’une population A et d’une population B. Les deux mesures donnent respectivement une prévalence de 27% sur l’échantillon A et de 35% sur l’échantillon B. Le test statistique de comparaison se conclut par l’expression \: p &lt; 0,02. Si alpha \= 5%, cela signifie que \: 
      Answers: 
      	la différence entre les deux prévalences n’est pas significative	 (False [ -33.33333 %])
      	la différence entre les deux prévalences est significative	 (True [ 50 %])
      	la différence réelle entre les prévalences des deux populations est inférieure à 2%	 (False [ -33.33333 %])
      	la différence réelle entre les prévalences des deux populations est inférieure à 5%	 (False [ -33.33333 %])
      	il y a moins de 2 chances sur 100 d’observer un tel résultat si les deux populations dont sont issus les deux échantillons ont une prévalence identique (True [ 50 %])
      Question: Stat-PR-distrib ( IDEA/Alerte-Investigation )
       [html]Lors d’une épidémie dans un village A, les cas de rougeole enregistrés parmi les enfants se répartissent selon les âges suivants \:<br>1 an\: 1 cas, 2 ans\: 6 cas, 3 ans\: 4 cas, 4 ans\: 3 cas, 4 ans\: 3 cas, 5 ans\: 1 cas, 8 ans\: 1 cas, 10 ans\: 1 cas, 14 ans\: 1 cas.<br>Quelle est la forme de la distribution ? 
      Answers: 
      	normale	 (False)
      	étirée à droite	 (True)
      	étirée à gauche	 (False)
      	bi-modale	 (False)
      	aléatoire (False)
      Question: Stat-PR-tendance_centrale ( IDEA/Alerte-Investigation )
       [html]Pour une distribution étirée d’un côté, quelle est la mesure de tendance centrale la plus appropriée ? 
      Answers: 
      	variance	 (False)
      	moyenne	 (False)
      	écart type	 (False)
      	médiane	 (True)
      	mode (False)
      Question: Stat-PR-intervalle ( IDEA/Alerte-Investigation )
       [html]Lors d’un sondage effectué sur un échantillon de 100 sujets représentatif de la population des cyclistes de la ville de Rennes, on constate que 28% d’entre eux portent habituellement un casque. L’intervalle de confiance à 95% est de plus ou moins 6%. Cet intervalle signifie que la proportion de l’ensemble des cyclistes de Rennes portant un casque \: 
      Answers: 
      	<p>est certainement comprise entre 22% et 34%</p>	 (False)
      	<p>est comprise entre 23% et 33% avec 6% de chance de se tromper</p>	 (False)
      	<p>est comprise entre 22% et 34% avec 5% de chance de se tromper</p>	 (True)
      	<p>est supérieure à 22% avec 5% de chance de se tromper</p>	 (False)
      	<p>a 95% de chance d’être égale à 28%</p> (False)
      Question: Stat-graphique ( IDEA/Alerte-Investigation )
       [html]Vous devez présenter les taux d’incidence annuels de tuberculose par catégorie socio professionnelle des cas pour l’année 2009 pour votre pays. Quelle représentation graphique allez vous utiliser ? 
      Answers: 
      	Histogramme	 (False)
      	Camembert	 (False)
      	Saint-Paulin	 (False)
      	Diagramme en barre	 (True)
      	Nuage de points (False)
      Question: Stat-facteur_confusion ( IDEA/Alerte-Investigation )
       [html]Dans une étude cas témoin, pour vérifier l’existence d’une association entre une exposition et une maladie, on étudie l’influence d’un tiers facteur sur cette relation. Parmi les conditions suivantes, quelles sont celles qui doivent être remplies pour que ce facteur soit un facteur de confusion \: 
      Answers: 
      	le tiers facteur est un facteur intermédiaire	 (False [ -33.33333 %])
      	le tiers facteur est associé à la maladie indépendamment de l’exposition	 (True [ 50 %])
      	les OR calculés dans chaque strate d’exposition au tiers facteur diffèrent entre eux	 (False [ -33.33333 %])
      	l’OR ajusté de Mantel Haenszel est identique à l’OR brut	 (False [ -33.33333 %])
      	l’OR ajusté de Mantel Haenszel est différent de l’OR brut (True [ 50 %])
      Question: Surv-PR-incidence_cumulée ( IDEA/Alerte-Investigation )
       [html]Durant l’année 2007, 3 500 nouveaux cas de rougeole ont été enregistrés par le système de surveillance de la région X qui compte une population de 2 000 000 habitants. Le nombre 3 500/2 000 000 représente \: 
      Answers: 
      	la prévalence	 (False)
      	l’incidence cumulée	 (True)
      	la spécificité	 (False)
      	la létalité	 (False)
      	l’efficacité vaccinale (False)
      Question: Surv-objectifs ( IDEA/Alerte-Investigation )
       [html]Quels sont les objectifs de la surveillance en santé publique ? 
      Answers: 
      	collecter des données sur la population	 (False [ -100 %])
      	décrire la dynamique temporospatiale des maladies	 (True [ 25 %])
      	éclairer les décisions de santé publique grâce aux données sanitaires	 (True [ 25 %])
      	détecter l’émergence de nouvelles pathologies et la survenue des phénomènes épidémiques	 (True [ 25 %])
      	évaluer les politiques et stratégies de contrôle et de prévention des maladies (True [ 25 %])
      Question: Surv-validation ( IDEA/Alerte-Investigation )
       La validation des données de surveillance...\: 
      Answers: 
      	...conditionne l’analyse des données. (True [ 33.33333 %])
      	...est une étape préalable à l’analyse des données. (True [ 33.33333 %])
      	...repose sur l’absence d’une définition de cas. (False [ -50 %])
      	...permet de confirmer les cas. (True [ 33.33333 %])
      	...est une étape optionnelle en situation d’urgence. (False [ -50 %])
      Question: Surv-denominateur ( IDEA/Alerte-Investigation )
       La présence d’un dénominateur... \: 
      Answers: 
      	...permet de calculer des taux et des proportions. (True [ 33.33333 %])
      	...permet la standardisation des taux. (True [ 33.33333 %])
      	...facilite la comparaison des populations et des territoires (True [ 33.33333 %])
      	...est systématique dans toutes les données de surveillance (False [ -50 %])
      	...est systématiquement nécessaire pour analyser des données de surveillance. (False [ -50 %])
      Question: Enquete-PR-types ( IDEA/Alerte-Investigation )
       [html]Une enquête est menée dans la montagne Bourbonnaise où un dépistage est réalisé chez des sujets choisis aléatoirement. Parmi les 1500 sujets inclus dans l’enquête, 60 présentent un diabète. Cette enquête est un exemple d’ \: 
      Answers: 
      	étude cas-témoins	 (False)
      	étude de cohorte	 (False)
      	étude transversale	 (True)
      	étude écologique	 (False)
      	essai clinique (False)
      Question: Enquete-depistage ( IDEA/Alerte-Investigation )
       [html]Un test de dépistage du cancer du sein a été effectué chez 600 femmes atteintes d’un cancer du sein (confirmé par biopsie) et chez 600 femmes non atteintes. Les résultats du test ont été positifs chez 150 femmes atteintes d’un cancer et chez 50 femmes non atteintes.Quelle est la sensibilité du test de dépistage ? 
      Answers: 
      	75 %	 (False)
      	25 %	 (True)
      	55 %	 (False)
      	92 %	 (False)
      	non calculable (False)
      Question: Enquete-specificite ( IDEA/Alerte-Investigation )
       [html]Un test de dépistage du cancer du sein a été effectué chez 600 femmes atteintes d’un cancer du sein (confirmé par biopsie) et chez 600 femmes non atteintes. Les résultats du test ont été positifs chez 150 femmes atteintes d’un cancer et chez 50 femmes non atteintes.Quelle est la spécificité du test de dépistage ? 
      Answers: 
      	75 %	 (False)
      	25 %	 (False)
      	55 %	 (False)
      	92 %	 (True)
      	non calculable (False)
      Question: Enquete-vpp ( IDEA/Alerte-Investigation )
       [html]Un test de dépistage du cancer du sein a été effectué chez 600 femmes atteintes d’un cancer du sein (confirmé par biopsie) et chez 600 femmes non atteintes. Les résultats du test ont été positifs chez 150 femmes atteintes d’un cancer et chez 50 femmes non atteintes.Quelle est la valeur prédictive positive du test de dépistage? 
      Answers: 
      	75 %	 (True)
      	25 %	 (False)
      	55 %	 (False)
      	92 %	 (False)
      	non calculable (False)
      Question: Enquete-vpn ( IDEA/Alerte-Investigation )
       [html]Un test de dépistage du cancer du sein a été effectué chez 600 femmes atteintes d’un cancer du sein (confirmé par biopsie) et chez 600 femmes non atteintes. Les résultats du test ont été positifs chez 150 femmes atteintes d’un cancer et chez 50 femmes non atteintes.Quelle est la valeur prédictive négative ? 
      Answers: 
      	75%	 (False)
      	25%	 (False)
      	55%	 (True)
      	92%	 (False)
      	non calculable (False)
      Question: Epd_Vac-efficacite ( IDEA/Alerte-Investigation )
       [html] Les résultats d’une enquête de cohorte réalisée lors d’une épidémie de rougeole au Burundi donnent les résultats suivant\: Parmi les vaccinés\: 40 cas de rougeole, 130 sans rougeole; parmi les non vaccinés\: 92 cas de rougeole, 122 sans rougeole. Quelle est l’efficacité du vaccin contre la rougeole ? 
      Answers: 
      	4%	 (False)
      	14%	 (False)
      	31%	 (False)
      	45%	 (True)
      	71% (False)
      Question: Epd_Vac-suivi_prog_vac ( IDEA/Alerte-Investigation )
       Parmi les activités suivantes, lesquelles permettent de suivre l’implémentation d’un programme de vaccination \: 
      Answers: 
      	La mesure de l’efficacité vaccinale dans la population visée par les recommandations. (True [ 25 %])
      	La mesure de la couverture vaccinale. (True [ 25 %])
      	La surveillance des effets secondaires. (True [ 25 %])
      	La surveillance des maladies évitables par les vaccinations. (True [ 25 %])
      	Le contrôle des vaccinations obligatoires. (False [ -100 %])
      Question: Epd_Vac-couverture_vac ( IDEA/Alerte-Investigation )
       Quelles sont les affirmations exactes concernant la couverture vaccinale \: 
      Answers: 
      	A efficacité constante, la part relative des échecs vaccinaux parmi les cas diminue lorsque la couverture vaccinale  augmente. (False [ -50 %])
      	Elle concerne uniquement les vaccinations du calendrier vaccinal de l’enfant. (False [ -50 %])
      	Elle nécessite une estimation de la population concernée par la vaccination. (True [ 33.33333 %])
      	Elle peut être estimée par des données de remboursement ou de vente. (True [ 33.33333 %])
      	A efficacité vaccinale constante, la proportion de cas vaccinés augmente lorsque la couverture vaccinale augmente. (True [ 33.33333 %])
      Question: Envir-preoccupations ( IDEA/Alerte-Investigation )
       Pour répondre aux préoccupations de la population en santé-environnement ou en santé en milieu professionnel \: 
      Answers: 
      	Il n’est pas nécessaire de consulter la population concernée mais de créer un groupe de travail uniquement avec les professionnels de référence (False)
      	Il faut vérifier et valider le signal (True)
      	Il est important d’engager une réflexion pour définir le(s) outils(s) pertinent(s) à mettre en place (True)
      	il est nécessaire de faire une étude épidémiologique (False)
      Question: Envir-lien ( IDEA/Alerte-Investigation )
       Le lien entre événement de santé et qualité des milieux de vie est difficile à établir car nous travaillons sur \: 
      Answers: 
      	Des risques faibles (True [ 33.33333 %])
      	Une relation avec l’environnement difficile à mettre en évidence (True [ 33.33333 %])
      	Des délais d’apparition des effets sur la santé par rapport à l’exposition qui sont trop courts (False [ -50 %])
      	Des expositions multiples (True [ 33.33333 %])
      	Des populations non-coopérantes (False [ -50 %])
      Quiz containing  39  questions 

---

    Code
      print(quiz)
    Output
      Quiz: 
      Question: AI-taux_attaque ( IDEA/Alerte-Investigation )
       [html]Pendant la dernière semaine du mois de septembre 2007, 90 personnes d’un petit village du Morbihan (population 650 habitants) participent à un dîner préparé par un épidémiologiste farceur. Au cours des 2 jours suivants, 36 participants développent une infection à <i>Salmonella</i>. Le taux d'attaque parmi les participants est \: 
      Answers: 
      	0,4%	 (False)
      	5,5%	 (False)
      	14,3%	 (False)
      	40,0%	 (True)
      	l’information donnée ne permet pas de calculer le taux d’attaque (False)
      Question: AI-risque_relatif ( IDEA/Alerte-Investigation )
       [html]Un questionnaire a été administré à tous les participants d’un diner dont certains participants sont malades. Il apparait que 30 malades et 20 non-malades ont consommé de la salade piémontaise tandis que 2 malades et 34 non-malades n’en ont pas consommé. Quel est le risque relatif d’être malade si l’on a consommé cette salade ? 
      Answers: 
      	0,4	 (False)
      	1,5	 (False)
      	4,0	 (True)
      	5,5	 (False)
      	8,3 (False)
      Question: AI-PR-definition_cas ( IDEA/Alerte-Investigation )
       [html] Lors d’une épidémie de rougeole survenue en juin 2008 dans une école privée de Bretagne Nord, la définition de cas suivante a été adoptée \: tout enfant de l’école ayant présenté, en juin 2008, une fièvre supérieure à 38°5C et une éruption maculo-papuleuse et des anticorps IgM anti rougeole élevés dans le sérum. Cette définition est \: 
      Answers: 
      	spécifique	 (True)
      	exhaustive	 (False)
      	pénible	 (False)
      	sensible	 (False)
      	prédictive (False)
      Question: AI-types_signaux ( IDEA/Alerte-Investigation )
       Quels types de signaux alimentent le dispositif de veille sanitaire ? 
      Answers: 
      	Les signaux issus des surveillances sanitaires et environnementales (True [ 33.33333 %])
      	Les signalements d’évènements sanitaires inhabituels (True [ 33.33333 %])
      	Les évènements ou information repérées dans la presse scientifique, les réseaux de veille internationaux ou les médias (True [ 33.33333 %])
      	Les relevés d’écoutes téléphoniques (False [ -50 %])
      	Les données de recensement de l’INSEE (False [ -50 %])
      Question: AI-alerte_sanitaire ( IDEA/Alerte-Investigation )
       Quand considère-t-on qu’un signal reçu par la veille sanitaire devient une alerte sanitaire ? 
      Answers: 
      	Quand le signal vient d’une source réputée fiable	 (False)
      	Quand le signal est vérifié (False)
      	Quand le signal est validé pour son impact sanitaire potentiel ou avéré (False)
      	Quand le signal est vérifié et validé pour son impact sanitaire potentiel ou avéré (True)
      	Quand le signal est inhabituel (False)
      Question: AI-actions_signal ( IDEA/Alerte-Investigation )
       Vous recevez au point focal de l’ARS, le message d’un maire signalant la survenue de trois cas de leucémies dans sa commune située à côté d’une centrale nucléaire. Quelles sont vos premières actions ? 
      Answers: 
      	Vous alertez le directeur général de l’ARS, le préfet et l‘exploitant de la centrale nucléaire (False [ -50 %])
      	Vous accusez réception de ce message au maire (True [ 33.33333 %])
      	Vous rappelez le maire pour compléter la fiche de signalement (True [ 33.33333 %])
      	Vous rassemblez des informations auprès des professionnels de santé concernés afin d’obtenir la confirmation du diagnostic médical de ces trois cas de leucémies (True [ 33.33333 %])
      	Vous prévenez la presse pour qu’elle alerte la population (False [ -50 %])
      Question: Schema-PR-transversale ( IDEA/Alerte-Investigation )
       [html]Une enquête transversale est menée, au mois de juin, dans la région Auvergne où un dépistage est réalisé chez des sujets choisis aléatoirement. Parmi les 5 000 sujets inclus dans l’enquête, 250 présentent un diabète. La proportion 250/5 000 représente \: 
      Answers: 
      	l’incidence cumulée	 (False)
      	le taux d’attaque	 (False)
      	la densité d’incidence	 (False)
      	la prévalence	 (True)
      	la létalité (False)
      Question: Schema-PR-prevalence ( IDEA/Alerte-Investigation )
       [html]Snowtown est une communauté de 200 000 personnes. En 1960, on a enregistré 2 000 décès, <u>toutes</u> causes réunies. En 1960, 600 cas de tuberculose ont été recensés dont 400 hommes et 200 femmes. Pendant la même année, 120 décès dus à la tuberculose ont été rapportés dont 100 hommes. Quelle est la prévalence de la tuberculose en 1960 ? 
      Answers: 
      	0.6 pour 1 000	 (False)
      	3 pour 1 000	 (True)
      	30 pour 1 000	 (False)
      	60 pour 1 000	 (False)
      	non calculable (False)
      Question: Schema-PR-mortalite_brut ( IDEA/Alerte-Investigation )
       [html] Snowtown est une communauté de 200 000 personnes. En 1960, on a enregistré 2 000 décès, <u>toutes</u> causes réunies. En 1960, 600 cas de tuberculose ont été recensés dont 400 hommes et 200 femmes. Pendant la même année, 120 décès dus à la tuberculose ont été rapportés dont 100 hommes. <br />Quel est le taux de mortalité brut en 1960? 
      Answers: 
      	0,6 pour 1 000	 (False)
      	3 pour 1 000	 (False)
      	10 pour 1 000	 (True)
      	100 pour 1 000	 (False)
      	non calculable (False)
      Question: Schema-mortalite_prop ( IDEA/Alerte-Investigation )
       [html]Snowtown est une communauté de 200 000 personnes. En 1960, on a enregistré 2 000 décès, toutes causes réunies. En 1960, 600 cas de tuberculose ont été recensés dont 400 hommes et 200 femmes. Pendant la même année, 120 décès dus à la tuberculose ont été rapportés dont 100 hommes.<br/>Quelle est la mortalité proportionnelle due à la tuberculose ? 
      Answers: 
      	3 pour 100	 (False)
      	6 pour 100	 (True)
      	20 pour 100	 (False)
      	30 pour 100	 (False)
      	non calculable (False)
      Question: Schema-letalite ( IDEA/Alerte-Investigation )
       [html]Snowtown est une communauté de 200 000 personnes. En 1960, on a enregistré 2 000 décès, toutes causes réunies. En 1960, 600 cas de tuberculose ont été recensés dont 400 hommes et 200 femmes. Pendant la même année, 120 décès dus à la tuberculose ont été rapportés dont 100 hommes.<br/>Quelle est la létalité de la tuberculose chez les hommes ?<br/> 
      Answers: 
      	25 pour 100	 (True)
      	6 pour 100	 (False)
      	20 pour 100	 (False)
      	2 pour 100	 (False)
      	non calculable (False)
      Question: Schema-PR-def_epi ( IDEA/Alerte-Investigation )
       [html]Dans la définition d’épidémiologie, les termes « distribution » et « déterminants » se rapportent à \: 
      Answers: 
      	diffusion de l’information à ceux qui en ont besoin	 (False)
      	connaissances, attitudes et pratiques relatives à la santé	 (False)
      	fréquences, caractéristiques et causes des phénomènes de santé	 (True)
      	services de santé publique et ressources allouées à ceux-ci	 (False)
      	caractéristiques des tests de dépistage (False)
      Question: Schema-PR-def_epi_desc ( IDEA/Alerte-Investigation )
       [html]L’épidémiologie descriptive permet de répondre aux interrogations suivantes SAUF \: 
      Answers: 
      	quoi ?	 (False)
      	qui ?	 (False)
      	pourquoi ?	 (True)
      	quand ?	 (False)
      	où ? (False)
      Question: Schema-PR-Identifier_cas_temoin ( IDEA/Alerte-Investigation )
       [html]Une étude a été réalisée auprès de 150 personnes atteintes d’un cancer de la vessie qui sont comparées à 300 personnes non atteintes de cancer de la vessie et provenant de la même population que les précédentes. L’ensemble des sujets a été interrogé pour déterminer leur exposition antérieure au tabagisme passif. Cette étude est un exemple d’une \: 
      Answers: 
      	étude de cohorte	 (False)
      	étude transversale	 (False)
      	essai clinique	 (False)
      	étude cas-témoin	 (True)
      	étude écologique (False)
      Question: Schema-PR-RR ( IDEA/Alerte-Investigation )
       [html]Dans une étude sur le cancer de la vessie et l’usage du tabac chez les hommes de Snowtown, on obtient les données suivantes \:<br>- chez les hommes fumeurs, le taux de cancer de la vessie est estimé à 69,0 pour 100 000 personnes-années.<br>- chez les hommes non fumeurs, le taux de cancer de la vessie est estimé à 37,4 pour 100 000 personnes-années. <br>Quel est le risque relatif de cancer de la vessie associé au tabagisme ? 
      Answers: 
      	31,6	 (False)
      	1,84	 (True)
      	0,07 %	 (False)
      	0,47	 (False)
      	non calculable (False)
      Question: Schema-Fraction_etio ( IDEA/Alerte-Investigation )
       [html]Dans une étude sur le cancer de la vessie et l’usage du tabac chez les hommes de Snowtown, on obtient les données suivantes \:- chez les hommes fumeurs, le taux de cancer de la vessie est estimé à 69,0 pour 100 000 personnes-années- chez les hommes non fumeurs, le taux de cancer de la vessie est estimé à 37,4 pour 100 000 personnes-années <br>Quelle est la fraction étiologique de cancer de la vessie attribuable à la cigarette chez les fumeurs ? 
      Answers: 
      	21,6	 (False)
      	0,84	 (False)
      	0,46	 (True)
      	46	 (False)
      	non calculable (False)
      Question: Schema-Causalite ( IDEA/Alerte-Investigation )
       [html]Pour affirmer la nature causale d’un facteur de risque dans la survenue d’une maladie, il suffit \: 
      Answers: 
      	d’observer une fréquence élevée de l’exposition à ce facteur chez les cas	 (False)
      	d’observer une absence d’exposition à ce facteur chez les sujets non malades	 (False)
      	d’observer une association significative entre le facteur de risque et la maladie (p<0,001)	 (False)
      	de savoir si l’exposition à ce facteur est antérieure à la survenue de la maladie	 (False)
      	aucune des réponses proposées (True)
      Question: Schema-PR-Temoins ( IDEA/Alerte-Investigation )
       [html]Dans une étude cas-témoin, un bon groupe témoin doit \: 
      Answers: 
      	<p>être représentatif de la population dont sont issus les cas</p>	 (True [ 50 %])
      	<p>appartenir à une population différente de celle dont sont issus les cas</p>	 (False [ -50 %])
      	<p>être choisi en fonction de l’exposition</p>	 (False [ -50 %])
      	<p>avoir la possibilité de développer la maladie</p>	 (True [ 50 %])
      	<p>savoir passer le relai !</p> (False)
      Question: Stat-PR-perc_augment ( IDEA/Alerte-Investigation )
       [html]En 2006, 400 cas de rougeole ont été identifiés dans un centre de santé. En 2007, ce nombre est de 475. Quel est le pourcentage d’augmentation du nombre de cas de rougeole? 
      Answers: 
      	19 %	 (True)
      	84 %	 (False)
      	119 %	 (False)
      	16 %	 (False)
      	116 % (False)
      Question: Stat-PR-signif_prevalence ( IDEA/Alerte-Investigation )
       [html]La prévalence d’une maladie a été comparée sur deux échantillons issus d’une population A et d’une population B. Les deux mesures donnent respectivement une prévalence de 27% sur l’échantillon A et de 35% sur l’échantillon B. Le test statistique de comparaison se conclut par l’expression \: p &lt; 0,02. Si alpha \= 5%, cela signifie que \: 
      Answers: 
      	la différence entre les deux prévalences n’est pas significative	 (False [ -33.33333 %])
      	la différence entre les deux prévalences est significative	 (True [ 50 %])
      	la différence réelle entre les prévalences des deux populations est inférieure à 2%	 (False [ -33.33333 %])
      	la différence réelle entre les prévalences des deux populations est inférieure à 5%	 (False [ -33.33333 %])
      	il y a moins de 2 chances sur 100 d’observer un tel résultat si les deux populations dont sont issus les deux échantillons ont une prévalence identique (True [ 50 %])
      Question: Stat-PR-distrib ( IDEA/Alerte-Investigation )
       [html]Lors d’une épidémie dans un village A, les cas de rougeole enregistrés parmi les enfants se répartissent selon les âges suivants \:<br>1 an\: 1 cas, 2 ans\: 6 cas, 3 ans\: 4 cas, 4 ans\: 3 cas, 4 ans\: 3 cas, 5 ans\: 1 cas, 8 ans\: 1 cas, 10 ans\: 1 cas, 14 ans\: 1 cas.<br>Quelle est la forme de la distribution ? 
      Answers: 
      	normale	 (False)
      	étirée à droite	 (True)
      	étirée à gauche	 (False)
      	bi-modale	 (False)
      	aléatoire (False)
      Question: Stat-PR-tendance_centrale ( IDEA/Alerte-Investigation )
       [html]Pour une distribution étirée d’un côté, quelle est la mesure de tendance centrale la plus appropriée ? 
      Answers: 
      	variance	 (False)
      	moyenne	 (False)
      	écart type	 (False)
      	médiane	 (True)
      	mode (False)
      Question: Stat-PR-intervalle ( IDEA/Alerte-Investigation )
       [html]Lors d’un sondage effectué sur un échantillon de 100 sujets représentatif de la population des cyclistes de la ville de Rennes, on constate que 28% d’entre eux portent habituellement un casque. L’intervalle de confiance à 95% est de plus ou moins 6%. Cet intervalle signifie que la proportion de l’ensemble des cyclistes de Rennes portant un casque \: 
      Answers: 
      	<p>est certainement comprise entre 22% et 34%</p>	 (False)
      	<p>est comprise entre 23% et 33% avec 6% de chance de se tromper</p>	 (False)
      	<p>est comprise entre 22% et 34% avec 5% de chance de se tromper</p>	 (True)
      	<p>est supérieure à 22% avec 5% de chance de se tromper</p>	 (False)
      	<p>a 95% de chance d’être égale à 28%</p> (False)
      Question: Stat-graphique ( IDEA/Alerte-Investigation )
       [html]Vous devez présenter les taux d’incidence annuels de tuberculose par catégorie socio professionnelle des cas pour l’année 2009 pour votre pays. Quelle représentation graphique allez vous utiliser ? 
      Answers: 
      	Histogramme	 (False)
      	Camembert	 (False)
      	Saint-Paulin	 (False)
      	Diagramme en barre	 (True)
      	Nuage de points (False)
      Question: Stat-facteur_confusion ( IDEA/Alerte-Investigation )
       [html]Dans une étude cas témoin, pour vérifier l’existence d’une association entre une exposition et une maladie, on étudie l’influence d’un tiers facteur sur cette relation. Parmi les conditions suivantes, quelles sont celles qui doivent être remplies pour que ce facteur soit un facteur de confusion \: 
      Answers: 
      	le tiers facteur est un facteur intermédiaire	 (False [ -33.33333 %])
      	le tiers facteur est associé à la maladie indépendamment de l’exposition	 (True [ 50 %])
      	les OR calculés dans chaque strate d’exposition au tiers facteur diffèrent entre eux	 (False [ -33.33333 %])
      	l’OR ajusté de Mantel Haenszel est identique à l’OR brut	 (False [ -33.33333 %])
      	l’OR ajusté de Mantel Haenszel est différent de l’OR brut (True [ 50 %])
      Question: Surv-PR-incidence_cumulée ( IDEA/Alerte-Investigation )
       [html]Durant l’année 2007, 3 500 nouveaux cas de rougeole ont été enregistrés par le système de surveillance de la région X qui compte une population de 2 000 000 habitants. Le nombre 3 500/2 000 000 représente \: 
      Answers: 
      	la prévalence	 (False)
      	l’incidence cumulée	 (True)
      	la spécificité	 (False)
      	la létalité	 (False)
      	l’efficacité vaccinale (False)
      Question: Surv-objectifs ( IDEA/Alerte-Investigation )
       [html]Quels sont les objectifs de la surveillance en santé publique ? 
      Answers: 
      	collecter des données sur la population	 (False [ -100 %])
      	décrire la dynamique temporospatiale des maladies	 (True [ 25 %])
      	éclairer les décisions de santé publique grâce aux données sanitaires	 (True [ 25 %])
      	détecter l’émergence de nouvelles pathologies et la survenue des phénomènes épidémiques	 (True [ 25 %])
      	évaluer les politiques et stratégies de contrôle et de prévention des maladies (True [ 25 %])
      Question: Surv-validation ( IDEA/Alerte-Investigation )
       La validation des données de surveillance...\: 
      Answers: 
      	...conditionne l’analyse des données. (True [ 33.33333 %])
      	...est une étape préalable à l’analyse des données. (True [ 33.33333 %])
      	...repose sur l’absence d’une définition de cas. (False [ -50 %])
      	...permet de confirmer les cas. (True [ 33.33333 %])
      	...est une étape optionnelle en situation d’urgence. (False [ -50 %])
      Question: Surv-denominateur ( IDEA/Alerte-Investigation )
       La présence d’un dénominateur... \: 
      Answers: 
      	...permet de calculer des taux et des proportions. (True [ 33.33333 %])
      	...permet la standardisation des taux. (True [ 33.33333 %])
      	...facilite la comparaison des populations et des territoires (True [ 33.33333 %])
      	...est systématique dans toutes les données de surveillance (False [ -50 %])
      	...est systématiquement nécessaire pour analyser des données de surveillance. (False [ -50 %])
      Question: Enquete-PR-types ( IDEA/Alerte-Investigation )
       [html]Une enquête est menée dans la montagne Bourbonnaise où un dépistage est réalisé chez des sujets choisis aléatoirement. Parmi les 1500 sujets inclus dans l’enquête, 60 présentent un diabète. Cette enquête est un exemple d’ \: 
      Answers: 
      	étude cas-témoins	 (False)
      	étude de cohorte	 (False)
      	étude transversale	 (True)
      	étude écologique	 (False)
      	essai clinique (False)
      Question: Enquete-depistage ( IDEA/Alerte-Investigation )
       [html]Un test de dépistage du cancer du sein a été effectué chez 600 femmes atteintes d’un cancer du sein (confirmé par biopsie) et chez 600 femmes non atteintes. Les résultats du test ont été positifs chez 150 femmes atteintes d’un cancer et chez 50 femmes non atteintes.Quelle est la sensibilité du test de dépistage ? 
      Answers: 
      	75 %	 (False)
      	25 %	 (True)
      	55 %	 (False)
      	92 %	 (False)
      	non calculable (False)
      Question: Enquete-specificite ( IDEA/Alerte-Investigation )
       [html]Un test de dépistage du cancer du sein a été effectué chez 600 femmes atteintes d’un cancer du sein (confirmé par biopsie) et chez 600 femmes non atteintes. Les résultats du test ont été positifs chez 150 femmes atteintes d’un cancer et chez 50 femmes non atteintes.Quelle est la spécificité du test de dépistage ? 
      Answers: 
      	75 %	 (False)
      	25 %	 (False)
      	55 %	 (False)
      	92 %	 (True)
      	non calculable (False)
      Question: Enquete-vpp ( IDEA/Alerte-Investigation )
       [html]Un test de dépistage du cancer du sein a été effectué chez 600 femmes atteintes d’un cancer du sein (confirmé par biopsie) et chez 600 femmes non atteintes. Les résultats du test ont été positifs chez 150 femmes atteintes d’un cancer et chez 50 femmes non atteintes.Quelle est la valeur prédictive positive du test de dépistage? 
      Answers: 
      	75 %	 (True)
      	25 %	 (False)
      	55 %	 (False)
      	92 %	 (False)
      	non calculable (False)
      Question: Enquete-vpn ( IDEA/Alerte-Investigation )
       [html]Un test de dépistage du cancer du sein a été effectué chez 600 femmes atteintes d’un cancer du sein (confirmé par biopsie) et chez 600 femmes non atteintes. Les résultats du test ont été positifs chez 150 femmes atteintes d’un cancer et chez 50 femmes non atteintes.Quelle est la valeur prédictive négative ? 
      Answers: 
      	75%	 (False)
      	25%	 (False)
      	55%	 (True)
      	92%	 (False)
      	non calculable (False)
      Question: Epd_Vac-efficacite ( IDEA/Alerte-Investigation )
       [html] Les résultats d’une enquête de cohorte réalisée lors d’une épidémie de rougeole au Burundi donnent les résultats suivant\: Parmi les vaccinés\: 40 cas de rougeole, 130 sans rougeole; parmi les non vaccinés\: 92 cas de rougeole, 122 sans rougeole. Quelle est l’efficacité du vaccin contre la rougeole ? 
      Answers: 
      	4%	 (False)
      	14%	 (False)
      	31%	 (False)
      	45%	 (True)
      	71% (False)
      Question: Epd_Vac-suivi_prog_vac ( IDEA/Alerte-Investigation )
       Parmi les activités suivantes, lesquelles permettent de suivre l’implémentation d’un programme de vaccination \: 
      Answers: 
      	La mesure de l’efficacité vaccinale dans la population visée par les recommandations. (True [ 25 %])
      	La mesure de la couverture vaccinale. (True [ 25 %])
      	La surveillance des effets secondaires. (True [ 25 %])
      	La surveillance des maladies évitables par les vaccinations. (True [ 25 %])
      	Le contrôle des vaccinations obligatoires. (False [ -100 %])
      Question: Epd_Vac-couverture_vac ( IDEA/Alerte-Investigation )
       Quelles sont les affirmations exactes concernant la couverture vaccinale \: 
      Answers: 
      	A efficacité constante, la part relative des échecs vaccinaux parmi les cas diminue lorsque la couverture vaccinale  augmente. (False [ -50 %])
      	Elle concerne uniquement les vaccinations du calendrier vaccinal de l’enfant. (False [ -50 %])
      	Elle nécessite une estimation de la population concernée par la vaccination. (True [ 33.33333 %])
      	Elle peut être estimée par des données de remboursement ou de vente. (True [ 33.33333 %])
      	A efficacité vaccinale constante, la proportion de cas vaccinés augmente lorsque la couverture vaccinale augmente. (True [ 33.33333 %])
      Question: Envir-preoccupations ( IDEA/Alerte-Investigation )
       Pour répondre aux préoccupations de la population en santé-environnement ou en santé en milieu professionnel \: 
      Answers: 
      	Il n’est pas nécessaire de consulter la population concernée mais de créer un groupe de travail uniquement avec les professionnels de référence (False)
      	Il faut vérifier et valider le signal (True)
      	Il est important d’engager une réflexion pour définir le(s) outils(s) pertinent(s) à mettre en place (True)
      	il est nécessaire de faire une étude épidémiologique (False)
      Question: Envir-lien ( IDEA/Alerte-Investigation )
       Le lien entre événement de santé et qualité des milieux de vie est difficile à établir car nous travaillons sur \: 
      Answers: 
      	Des risques faibles (True [ 33.33333 %])
      	Une relation avec l’environnement difficile à mettre en évidence (True [ 33.33333 %])
      	Des délais d’apparition des effets sur la santé par rapport à l’exposition qui sont trop courts (False [ -50 %])
      	Des expositions multiples (True [ 33.33333 %])
      	Des populations non-coopérantes (False [ -50 %])
      Quiz containing  39  questions 

