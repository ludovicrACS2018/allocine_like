-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 29 mai 2018 à 13:50
-- Version du serveur :  5.7.21
-- Version de PHP :  7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `allocine_like`
--

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

DROP TABLE IF EXISTS `film`;
CREATE TABLE IF NOT EXISTS `film` (
  `id_film` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fil_titre` varchar(255) DEFAULT NULL,
  `fil_description` longtext,
  `fil_annee` year(4) DEFAULT NULL,
  `fil_image` varchar(255) DEFAULT NULL,
  `slug` longtext,
  PRIMARY KEY (`id_film`),
  UNIQUE KEY `id_Film_UNIQUE` (`id_film`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`id_film`, `fil_titre`, `fil_description`, `fil_annee`, `fil_image`, `slug`) VALUES
(1, 'RESIDENT EVIL : CHAPITRE FINAL', 'Alice, seule survivante de la bataille de Washington contre les zombies, doit retourner à l’endroit où le cauchemar a débuté : le Hive à Raccoon City. C’est là, qu’Umbrella Corporation a regroupé ses forces pour mener un assaut final contre les survivants de l’apocalypse.', 2017, 'http://www.allocine.fr/film/fichefilm_gen_cfilm=181098.html', 'resident-evil-chapitre-final'),
(2, 'LA CH’TITE FAMILLE', 'Valentin D. et Constance Brandt, un couple d’architectes designers en vogue préparent le vernissage de leur rétrospective au Palais de Tokyo. Mais ce que personne ne sait, c’est que pour s’intégrer au monde du design et du luxe parisien, Valentin a menti sur ses origines prolétaires et ch\'tis. Alors, quand sa mère, son frère et sa belle-sœur débarquent par surprise au Palais de Tokyo, le jour du vernissage, la rencontre des deux mondes est fracassante. D’autant plus que Valentin, suite à un accident, va perdre la mémoire et se retrouver 20 ans en arrière, plus ch’ti que jamais !', 2018, 'http://fr.web.img6.acsta.net/c_215_290/pictures/17/11/27/12/03/3859476.jpg', 'la-ch-tite-famille'),
(3, 'ESCOBAR', 'Impitoyable et cruel chef du cartel de Medellin, Pablo Escobar est le criminel le plus riche de l’Histoire avec une fortune de plus de 30 milliards de dollars. L’empereur de la cocaïne met la Colombie à feu et à sang dans les années 80 en introduisant un niveau de violence sans précédent dans le commerce de la drogue.\r\nFascinée par son charisme et son pouvoir, la très célèbre journaliste Virginia Vallejo, va s’apercevoir qu’on ne s’approche pas de l’homme le plus dangereux du monde impunément...', 2018, 'http://fr.web.img2.acsta.net/c_215_290/pictures/18/03/08/17/46/5852461.jpg\r\n', 'escobar'),
(4, 'FOREST GUMP', 'Quelques décennies d\'histoire américaine, des années 1940 à la fin du XXème siècle, à travers le regard et l\'étrange odyssée d\'un homme simple et pur, Forrest Gump', 1994, 'http://img.filmsactu.net/datas/films/f/o/forrest-gump/xl/46f86dae3aab9.jpg', 'forest-gump'),
(5, 'LA LIGNE VERTE', 'Paul Edgecomb, pensionnaire centenaire d\'une maison de retraite, est hanté par ses souvenirs. Gardien-chef du pénitencier de Cold Mountain en 1935, il était chargé de veiller au bon déroulement des exécutions capitales en s’efforçant d\'adoucir les derniers moments des condamnés. Parmi eux se trouvait un colosse du nom de John Coffey, accusé du viol et du meurtre de deux fillettes. Intrigué par cet homme candide et timide aux dons magiques, Edgecomb va tisser avec lui des liens très forts.', 2000, 'http://fr.web.img4.acsta.net/medias/nmedia/18/66/15/78/19254683.jpg', 'la-ligne-verte'),
(6, 'LES EVADES', 'En 1947, Andy Dufresne, un jeune banquier, est condamné à la prison à vie pour le meurtre de sa femme et de son amant. Ayant beau clamer son innocence, il est emprisonné à Shawshank, le pénitencier le plus sévère de l\'Etat du Maine. Il y fait la rencontre de Red, un Noir désabusé, détenu depuis vingt ans. Commence alors une grande histoire d\'amitié entre les deux hommes...', 1995, 'http://fr.web.img3.acsta.net/medias/nmedia/18/63/30/68/18686447.jpg', 'les-evades'),
(7, 'IP MAN', 'Dans les années 30, il vit à Foshan dans le sud de la Chine, lors de l\'occupation japonaise. Face à ses indéniables talents en matière d\'arts martiaux, les Japonais lui demandent d\'entraîner les soldats, ce qu\'il refuse catégoriquement. Il va alors devoir lutter pour sa survie.', 2008, 'https://images-na.ssl-images-amazon.com/images/I/8143uwZE6LL._SY445_.jpg', 'ip-man'),
(8, 'Street Fighter II, le film', 'Dans un futur proche, les assassinats d\'hommes politiques se multiplient. Derrière ces attentats se cache un plan machiavélique monté par Bison, le chef suprême du plus grand syndicat du crime. Son but : trouver et capturer les plus grands experts en arts martiaux afin de les transformer en machines à tuer. Avec une armée de guerriers invincibles, rien ne pourra empêcher sa conquête du monde ! Mais des combattants légendaires vont se dresser sur sa route.', 1994, 'http://papystreaming.com/fr/files/2015/05/Street-Fighter-II-le-film.jpg', 'street-fighter-ii-le-film'),
(9, 'le crocodile du botswanga', 'Didier est un petit agent de joueurs de football. Parmi ses poulains, il compte le jeune Leslie Konda qui vient de signer son premier contrat d\'attaquant avec un grand club espagnol. Cette nouvelle n\'a pas échappé à Bobo Babimbi, passionné de foot et frais président du Botswanga, petit État pauvre d\'Afrique centrale, le pays de la famille de Leslie. Il invite alors le jeune homme à découvrir la terre de ses ancêtres afin de le décorer.', 2004, 'http://fr.web.img3.acsta.net/pictures/13/12/16/11/51/058213.jpg', 'le-crocodile-du-botswanga'),
(10, 'BIG FISH', 'L\'histoire à la fois drôle et poignante d\'Edward Bloom, un père débordant d\'imagination, et de son fils William. Ce dernier retourne au domicile familial après l\'avoir quitté longtemps auparavant, pour être au chevet de son père, atteint d\'un cancer. Il souhaite mieux le connaître et découvrir ses secrets avant qu\'il ne soit trop tard. L\'aventure débutera lorsque William tentera de discerner le vrai du faux dans les propos de son père mourant.', 2003, 'https://images-na.ssl-images-amazon.com/images/I/510W2QCSWXL._SY445_.jpg', 'big-fish'),
(11, 'Gadjo dilo', 'Stéphane, jeune Français avide de sensations, parcourt à pied la Roumanie à la recherche d\'une chanteuse inconnue nommée Nora Luca dont il possède un enregistrement sur une cassette audio héritée de son père. À l\'heure du couvre-feu, il se retrouve seul, dehors, avec pour seul interlocuteur un vieux musicien, prénommé Izidor. Ce Rom, brisé par la vie, noie dans l\'ivresse l\'emprisonnement de son fils. Autour d\'une bouteille de vodka, Stéphane et Izidor communiquent péniblement, mais un lien d\'humanité s\'établit. Izidor prend alors Stéphane sous son aile et se bat pour que l\'ensemble du village l\'accepte. Le temps passant, le gadjo dilo (le non-tsigane fou) continue la traque de cette mystérieuse Nora Luca, tout en trouvant sa place au sein de la communauté tzigane. Il reprend sa quête de la musique en faisant des enregistrements des chants. La barrière de la langue étant un réel handicap, il fait la rencontre de Sabina, la seule à avoir quelques bases de français. À la suite de plusieurs pérégrinations et autres spectacles, les liens se resserrent entre Stéphane et Sabina. Et c\'est à ce moment même, que le fils d\'Izidor, Adriani, sort de prison. Une liesse s\'empare alors du village et se conclut par une grande fête où l\'alcool et les chants tziganes coulent et envoûtent. Peu de temps après, à la suite d\'une discussion houleuse entre Adriani et un Roumain non-tsigane, le fils d\'Izidor est tué et le village brûlé. C\'est dans ce climat chaotique que Stéphane quitte le village avec Sabina. Et c\'est au point de départ de son aventure qu\'il enterre à la manière tzigane ses enregistrements de musique.', 1997, 'http://distrib.pyramidefilms.com/images/films/656/_thumb1/220px-gadjodilo.jpg', 'gadjo-dilo'),
(12, 'Buena Vista Social Club', 'Buena Vista Social Club est un film documentaire allemand, sur la musique cubaine, réalisé et écrit par Wim Wenders, sorti en 1999 en Allemagne et en France. D\'abord projeté au Berlinale, il a ensuite participé à de nombreux festivals internationaux tels que le Festival international du film de Jakarta, le Festival international du film norvégien ou encore le Festival international du film de Singapour. Ce film retrace l\'enregistrement d\'un CD par le groupe Buena Vista Social Club associé à des archives et des interviews.', 1999, 'http://fr.web.img3.acsta.net/pictures/16/07/29/17/00/114260.jpg', 'buena-vista-social-club'),
(13, 'CITOYEN D\'HONNEUR', 'L’Argentin Daniel Mantovani, lauréat du Prix Nobel de littérature, vit en Europe depuis plus de trente ans. Alors qu\'il refuse systématiquement les multiples sollicitations dont il est l’objet, il décide d\'accepter l\'invitation reçue de sa petite ville natale qui souhaite le faire citoyen d\'honneur. Mais est-ce vraiment une bonne idée de revenir à Salas dont les habitants sont devenus à leur insu les personnages de ses romans ?', 2017, 'http://fr.web.img4.acsta.net/c_215_290/pictures/17/02/10/15/18/513039.jpg', 'citoyen-d\'honneur'),
(14, 'EYES WIDE SHUT', 'William Harford, médecin, mène une paisible existence familiale. Jusqu\'au jour où sa femme, Alice, lui avoue avoir eu le désir de le tromper quelques mois auparavant…', 1999, 'http://fr.web.img3.acsta.net/c_215_290/medias/nmedia/18/65/43/72/19106205.jpg', 'eyes-wide-shut'),
(15, 'BURN AFTER READING', 'Osbourne Cox, analyste à la CIA, est convoqué à une réunion ultrasecrète au quartier général de l\'Agence à Arlington, en Virginie. Malheureusement pour lui, il découvre rapidement l\'objectif de cette réunion : il est renvoyé. Cox ne prend pas très bien la nouvelle. Il rentre chez lui à Georgetown pour écrire ses mémoires et noyer ses ennuis dans l\'alcool - pas nécessairement dans cet ordre. Sa femme, Katie, est consternée, mais pas vraiment surprise. Elle a une liaison avec Harry Pfarrer, un marshal fédéral marié pour qui elle décide alors de quitter Cox.Quelque part dans une banlieue de Washington, à des années-lumière de là, Linda Litzke, employée au club de remise en forme Hardbodies Fitness, a du mal à se concentrer sur son travail. La seule chose qui l\'intéresse, c\'est l\'opération de chirurgie esthétique d\'ampleur qu\'elle désire subir. Elle compte sur son collègue, Chad Feldheimer, pour faire son boulot à sa place. Linda est à peine consciente que le directeur de la salle de sport, Ted Treffon, est fou d\'elle, même si elle rencontre d\'autres hommes via Internet. Lorsqu’un CD contenant des informations destinées au livre de Cox tombe accidentellement entre les mains de Linda et Chad, tous deux décident de tirer parti de cette aubaine. Alors que Ted se fait du souci, persuadé que rien de bon ne sortira de tout ça, les événements se précipitent et échappent bientôt à tout contrôle, occasionnant une série de rencontres aussi dangereuses qu\'hilarantes...', 2008, 'http://fr.web.img2.acsta.net/c_215_290/medias/nmedia/18/65/71/80/18991610.jpg', 'burn-after-reading'),
(16, 'DRIVE', 'Un jeune homme solitaire, The Driver, conduit le jour à Hollywood pour le cinéma en tant que cascadeur et la nuit pour des truands. Ultra professionnel et peu bavard, il a son propre code de conduite. Jamais il n’a pris part aux crimes de ses employeurs autrement qu’en conduisant - et au volant, il est le meilleur !\r\nShannon, le manager qui lui décroche tous ses contrats, propose à Bernie Rose, un malfrat notoire, d’investir dans un véhicule pour que son poulain puisse affronter les circuits de stock-car professionnels. Celui-ci accepte mais impose son associé, Nino, dans le projet.', 2011, 'http://fr.web.img2.acsta.net/c_215_290/medias/nmedia/18/83/93/95/19803697.jpg', 'drive'),
(17, 'MOMMY', 'Une veuve mono-parentale hérite de la garde de son fils, un adolescent TDAH impulsif et violent. Au coeur de leurs emportements et difficultés, ils tentent de joindre les deux bouts, notamment grâce à l’aide inattendue de l’énigmatique voisine d’en face, Kyla. Tous les trois, ils retrouvent une forme d’équilibre et, bientôt, d’espoir.', 2014, 'http://fr.web.img5.acsta.net/c_215_290/o_club300a.png_0_se/pictures/14/08/29/16/30/166201.jpg', 'mommy'),
(18, 'MULHOLLAND DRIVE', 'A Hollywood, durant la nuit, Rita, une jeune femme, devient amnésique suite à un accident de voiture sur la route de Mulholland Drive. Elle fait la rencontre de Betty Elms, une actrice en devenir qui vient juste de débarquer à Los Angeles. Aidée par celle-ci, Rita tente de retrouver la mémoire ainsi que son identité.', 2001, 'http://fr.web.img2.acsta.net/c_215_290/pictures/17/04/27/14/07/500364.jpg', 'mulholland-drive'),
(19, 'Porco Rosso', 'Dans l\'entre-deux-guerres quelque part en Italie, le pilote Marco, aventurier solitaire, vit dans le repaire qu\'il a etabli sur une ile deserte de l\'Adriatique. A bord de son splendide hydravion rouge, il vient en aide aux personnes en difficulté.', 1992, 'http://fr.web.img2.acsta.net/medias/nmedia/18/36/02/53/19254797.jpg', 'porco-rosso'),
(20, 'Princesse Mononoké', 'Au XVe siècle, durant l\'ère Muromachi, la forêt japonaise, jadis protégée par des animaux géants, se dépeuple à cause de l\'homme. Un sanglier transformé en démon dévastateur en sort et attaque le village d\'Ashitaka, futur chef du clan Emishi. Touché par le sanglier qu\'il a tué, celui-ci est forcé de partir à la recherche du dieu Cerf pour lever la malédiction qui lui gangrène le bras.', 2000, 'https://www.santamonica.com/wp-content/uploads/2018/02/Princess-Mononoke.jpg', 'princesse-mononoke'),
(21, 'Le Voyage de Chihiro', 'Chihiro, dix ans, a tout d\'une petite fille capricieuse. Elle s\'apprête à emménager avec ses parents dans une nouvelle demeure.\r\nSur la route, la petite famille se retrouve face à un immense bâtiment rouge au centre duquel s\'ouvre un long tunnel. De l\'autre côté du passage se dresse une ville fantôme. Les parents découvrent dans un restaurant désert de nombreux mets succulents et ne tardent pas à se jeter dessus. Ils se retrouvent alors transformés en cochons.\r\nPrise de panique, Chihiro s\'enfuit et se dématérialise progressivement. L\'énigmatique Haku se charge de lui expliquer le fonctionnement de l\'\'univers dans lequel elle vient de pénétrer. Pour sauver ses parents, la fillette va devoir faire face à la terrible sorcière Yubaba, qui arbore les traits d\'\'une harpie méphistophélique.', 2001, 'http://fr.web.img6.acsta.net/medias/nmedia/00/02/36/71/chihiro.jpg', 'le-voyage-de-chihiro'),
(22, 'DRAGONBALL EVOLUTION', 'Dans les temps anciens, la Terre faillit être détruite par des forces maléfiques. Pour s\'en prémunir, sept sages créèrent les boules de cristal : les Dragonballs. Décidées à prendre leur revanche, les forces du Mal sont désormais de retour, et un seul guerrier d\'exception est capable d\'empêcher le pire. Le jeune Sangoku va alors découvrir le jour de ses 18 ans que son destin est trés loin de ce qu\'il avait imaginé.', 2009, 'https://1645110239.rsc.cdn77.org/image/f330x470/q50/mm/befr/movies6070/posters/dragonball-evolution.20170228013439.jpg', 'dragonball-evolution'),
(23, 'DEATH NOTE', 'Inspiré du célèbre manga japonais écrit par Tsugumi Ohba et illustré par Takeshi Obata, Death Note suit un lycéen qui trouve un carnet doté d\'un pouvoir surnaturel : quiconque le possède condamne à mort ceux dont il y inscrit le nom en pensant à leur visage. Enivré par un sentiment de toute-puissance quasi divine, le jeune homme commence à tuer ceux qu’il estime indignes de vivre.', 2017, 'https://media.senscritique.com/media/000017134740/source_big/Death_Note.jpg', 'death-note'),
(24, 'SHAOLIN SOCCER', 'Fung était une légende vivante du football, jusqu\'à ce qu\'il fasse perdre le championnat à son équipe. Fous de rage, les fans ne le lui ont pas pardonné.\r\nAujourd\'hui, Fung s\'occupe du matériel de la Team Evil, l\'équipe de son ancien partenaire, Hung. Lorsque Fung est renvoyé, il se tourne vers Sing, un moine du célèbre temple Shaolin qui possède des dons extraordinaires en matière d\'\'arts martiaux.\r\nLorsque Fung voit Sing mettre en déroute une bande de voyous avec un simple ballon de football, il a l\'\'ingénieuse idée de créer une équipe de foot Shaolin pour vaincre ses adversaires...', 2002, 'http://fr.web.img5.acsta.net/medias/nmedia/00/02/48/98/affiche.jpg', 'shaolin-soccer'),
(25, 'Un prophète', 'Condamné à 6 ans de prison, Malik El Djebena ne sait ni lire, ni écrire. A son arrivée en Centrale, seul au monde, il paraît plus jeune, plus fragile que les autres détenus. Il a 19 ans. D\'emblée, il tombe sous la coupe d\'un groupe de prisonniers corses qui fait régner sa loi dans la prison. Le jeune homme apprend vite. Au fil des missions, il s\'endurcit et gagne la confiance des Corses.', 2009, 'http://fr.web.img6.acsta.net/medias/nmedia/18/70/33/24/19138702.jpg', 'un-prophete'),
(26, 'Snatch', 'Franky vient de voler un énorme diamant qu\'il doit livrer à Avi, un mafieux new-yorkais. En chemin, il fait escale à Londres où il se laisse convaincre par Boris de parier sur un combat de boxe clandestin. Il ignore, bien sûr, qu\'il s\'agit d\'un coup monté avec Vinny et Sol, afin de le délester de son magnifique caillou. Turkish et Tommy, eux, ont un problème avec leur boxeur, un gitan complètement fêlé qui refuse de se coucher au quatrième round comme prévu.', 2000, 'http://fr.web.img4.acsta.net/pictures/14/08/20/12/54/429006.jpg', 'snatch'),
(27, 'Fight Club', 'Jack est un jeune expert en assurance insomniaque, désillusionné par sa vie personnelle et professionnelle. Lorsque son médecin lui conseille de suivre une thérapie afin de relativiser son mal-être, il rencontre dans un groupe d\'entraide Marla avec qui il parvient à trouver un équilibre.', 1999, 'https://media.senscritique.com/media/000014744225/source_big/Fight_Club.jpg', 'fight-club'),
(28, 'STALKER', 'Stalker, sorte de guide, accompagne un physicien et un écrivain dans la zone, vaste no man\'s land ou jadis est tombe une météorite. Ce territoire contient un secret: la chambre des désirs exauçant les voeux de ceux qui s\'y rendent.', 1979, 'http://montreal.carpediem.cd/data/afisha/o/01/82/0182748274.jpg', 'stalker'),
(29, 'FROM DUSK TILL DAWN', 'Deux criminels prennent une famille en otage près de la frontière mexicaine, après une cavale particulièrement sanglante durant laquelle ils ont tué un policier et kidnappé l\'employée d\'un magasin. Ils se rendent tous ensemble dans un bar pour routier au-delà de la frontière mexicaine, appelé le \'Titty Twister\', établissement qui leur réserve pas mal de surprises une fois la nuit tombée...', 1996, 'https://imgc.allpostersimages.com/img/print/affiches/une-nuit-en-enfer_a-G-8033828-0.jpg', 'from-dusk-till-dawn'),
(30, 'THE BIG LEBOWSKI', 'Jeff Lebowski, prénommé le Duc, est un paresseux qui passe son temps à boire des coups avec son copain Walter et à jouer au bowling, jeu dont il est fanatique. Un jour deux malfrats le passent à tabac. Il semblerait qu\'un certain Jackie Treehorn veuille récupérer une somme d\'argent que lui doit la femme de Jeff. Seulement Lebowski n\'est pas marié. C\'est une méprise, le Lebowski recherché est un millionnaire de Pasadena. Le Duc part alors en quête d\'un dédommagement auprès de son richissime homonyme...', 1998, 'https://media.senscritique.com/media/000012353514/source_big/The_Big_Lebowski.jpg', 'the-big-lebowski'),
(31, 'SHREK', 'Shrek, un ogre verdâtre, découvre de petites créatures agaçantes qui errent dans son marais. Shrek se rend alors au château du seigneur Lord Farquaad, qui aurait soi-disant expulsé ces êtres de son royaume. Ce dernier souhaite épouser la princesse Fiona, mais celle-ci est retenue prisonnière par un abominable dragon. Il lui faut un chevalier assez brave pour secourir la belle. Shrek accepte d\'accomplir cette mission.', 2001, 'http://www.cinekidz.com/wp-content/uploads/2014/04/Shrek-11.jpg', 'shrek'),
(32, 'MATRIX', 'Programmeur anonyme dans un service administratif le jour, Thomas Anderson devient Neo la nuit venue. Sous ce pseudonyme, il est l\'un des pirates les plus recherchés du cyber-espace. A cheval entre deux mondes, Neo est assailli par d\'étranges songes et des messages cryptés provenant d\'un certain Morpheus. Celui-ci l\'exhorte à aller au-delà des apparences et à trouver la réponse à la question qui hante constamment ses pensées : qu\'est-ce que la Matrice ?', 1999, 'http://fr.web.img6.acsta.net/medias/04/34/49/043449_af.jpg', 'matrix'),
(33, 'SLUMDOG MILLIONAIRE', 'Depuis son enfance dans les bidonvilles de Mumbai, Jamal Malik poursuit son rêve : retrouver Latika, une jeune orpheline dont il est amoureux. Alors qu\'il commence à perdre espoir, il imagine une solution surprenante pour retrouver son amour : participer au plus grand show télévisé du pays, Qui veut gagner des millions ? . Il atteint la question finale à 20 millions de roupies mais il est arrêté par la police, qui le soupçonne de tricherie.', 2009, 'https://d3ddkgxe55ca6c.cloudfront.net/assets/t1497366559/a/3c/cf/130765-ml-354743.jpg', 'slumdog-millionaire'),
(34, 'LA HAINE', 'Trois copains d\'une banlieue ordinaire traînent leur ennui et leur jeunesse qui se perd. Ils vont vivre la journée la plus importante de leur vie après une nuit d\'\'émeutes provoquée par le passage à tabac d\'\'Abdel Ichah par un inspecteur de police lors d\'un interrogatoire.', 1995, 'http://fr.web.img3.acsta.net/c_215_290/medias/nmedia/18/72/21/87/19158471.jpg', 'la-haine'),
(35, 'WASABI', 'Flic solitaire au grand coeur mais aux méthodes parfois musclées, l\'inspecteur Hubert se retrouve en vacances forcées après avoir rossé le fils du préfet. Un jour, il reçoit le coup de fil d\'un notaire qui lui annonce que Miko, la femme de sa vie disparue vingt ans auparavant, vient de mourir dans d\'étranges circonstances. Seul légataire testamentaire, Hubert débarque au Japon, accueilli par son ancien équipier, pour découvrir ce dont il a hérité.', 2001, 'http://fr.web.img6.acsta.net/c_215_290/medias/nmedia/00/02/31/95/was.jpg', 'wasabi'),
(36, 'SEUL SUR MARS', 'Lors d’une expédition sur Mars, l’astronaute Mark Watney (Matt Damon) est laissé pour mort par ses coéquipiers, une tempête les ayant obligés à décoller en urgence. Mais Mark a survécu et il est désormais seul, sans moyen de repartir, sur une planète hostile. Il va devoir faire appel à son intelligence et son ingéniosité pour tenter de survivre et trouver un moyen de contacter la Terre. A 225 millions de kilomètres, la NASA et des scientifiques du monde entier travaillent sans relâche pour le sauver, pendant que ses coéquipiers tentent d’organiser une mission pour le récupérer au péril de leurs vies.', 2015, 'http://fr.web.img4.acsta.net/c_215_290/pictures/15/09/08/15/20/305329.jpg', 'seul-sur-mars'),
(37, 'Deadpool', 'Wade Wilson, un ancien militaire des forces spéciales, est devenu mercenaire. Après avoir subi une expérimentation hors-norme qui va accélérer ses pouvoirs de guérison, il va devenir Deadpool. Armé de ses nouvelles capacités et d\'un humour noir survolté, il va traquer l\'homme qui a bien failli anéantir sa vie.', 2016, 'http://fr.web.img3.acsta.net/r_1280_720/pictures/16/01/19/16/49/249124.jpg', 'deadpool'),
(38, 'Her', 'En 2025 à Los Angeles, Theodore travaille pour un site web comme écrivain public, rédigeant des lettres manuscrites de toutes sortes - familiales, amoureuses, etc. - pour d\'autres. Son épouse Catherine et lui ont rompu depuis bientôt un an mais il ne se décide pas à signer les papiers du divorce. Dans un état de dépression qui perdure, il installe un nouveau système d\'exploitation OS1, auquel il donne une voix féminine.', 2013, 'http://fr.web.img5.acsta.net/pictures/14/03/10/10/26/014107.jpg', 'her'),
(39, 'La Cité de la Peur', 'Odile Deray, attachée de presse, vient au Festival de Cannes pour présenter le film `Red is Dead\'. Malheureusement, celui-ci est d\'une telle faiblesse que personne ne souhaite en faire l\'écho. Cependant, lorsque les projectionnistes du long-métrage en question meurent chacun leur tour dans d\'étranges circonstances, `Red is dead\' bénéficie d\'une incroyable publicité. Serge Karamazov est alors chargé de protéger le nouveau projectionniste du film.', 1994, 'http://fr.web.img6.acsta.net/medias/nmedia/18/35/86/35/19106159.jpg', 'la-cite-de-la-peur'),
(40, 'L\'Insoutenable Légèreté de l\'être', 'L\'Insoutenable légèreté de l\'être traite de plusieurs thèmes, et place, au centre de tout, des personnages incarnant de grandes idées. Parmi eux, Tomas oscille entre le libertin et l\'amoureux passionné, alors que Tereza brigue l\'amour pur et que Sabina poursuit la légèreté.', 1988, 'http://es.web.img3.acsta.net/c_215_290/pictures/210/033/21003334_20130505192936204.jpg', 'l-insoutenable-legerete-de-l\'etre'),
(41, 'Cinema Paradiso', 'À Rome, à la fin des années 1980, Salvatore vient d\'apprendre la mort de son vieil ami Alfredo. Par cette nouvelle, c\'est toute son enfance qui remonte à la surface : son village natal, en Sicile, quand on l\'appelait Totò et qu\'il partageait son temps libre entre l\'église (où il était enfant de chœur) et la salle de cinéma paroissiale, où régnait Alfredo, le projectionniste qui, au travers des films qu\'il projetait, lui apprenait la vie', 1988, 'http://www.lavanguardia.com/r/GODO/LV/p4/WebSite/2018/01/11/Recortada/img_astrid_20180111-171906_imagenes_lv_terceros_toto-k7kE-U434221767790sIB-992x558@LaVanguardia-Web.jpg', 'cinema-paradiso'),
(42, 'Le Tombeau des lucioles', 'Durant l\'été 1945, dans le Japon de la Seconde Guerre mondiale, deux enfants, Seita (un adolescent de quatorze ans) et sa jeune sœur Setsuko (qui a quatre ans), se trouvent livrés à eux-mêmes après la mort de leur mère, à la suite du bombardement à la bombe incendiaire de Kobe par les forces armées américaines. Après avoir vainement tenté de contacter leur père, un officier supérieur de la marine impériale japonaise, Seita et Setsuko partent habiter chez une tante éloignée. Un temps accueillante, la tante traite progressivement les deux enfants comme des fardeaux. Aussi, Seita et Setsuko partent et se réfugient dans un abri désaffecté. Celui-ci est illuminé la nuit par des milliers de lucioles. Les problèmes s\'enchaînent : la nourriture vient à manquer et Setsuko est victime d\'anémie. Seita se met alors à voler de la nourriture, mais se fait prendre par un fermier. En désespoir de cause, il part en ville vider le compte en banque de ses parents et apprend à l\'occasion la capitulation du Japon et la destruction de la marine japonaise. De retour à l\'abri avec de la nourriture, il ne parvient pas à sauver Setsuko d\'une mort lente et atroce. Après l\'avoir incinérée et mis ses cendres dans la boîte à bonbon que Seita avait offerte à Setsuko juste avant de quitter leur maison, et qui fut le rare plaisir culinaire de Setsuko durant leurs mésaventures, il se laisse à son tour dépérir jusqu\'à sa mort dans une gare, dépeinte au début du film avant un long flash-back. Les esprits des deux enfants, réunis, contemplent le Kobe moderne.', 1988, 'http://fr.web.img2.acsta.net/c_215_290/medias/nmedia/18/60/08/31/19079741.jpg', 'le-tombeau-des-lucioles');

-- --------------------------------------------------------

--
-- Structure de la table `film_as_genre`
--

DROP TABLE IF EXISTS `film_as_genre`;
CREATE TABLE IF NOT EXISTS `film_as_genre` (
  `id_film_as_genre` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_film` int(10) UNSIGNED NOT NULL,
  `id_genre` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_film_as_genre`),
  UNIQUE KEY `id_film_as_genre` (`id_film_as_genre`) USING BTREE,
  KEY `id_film` (`id_film`),
  KEY `id_genre` (`id_genre`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `film_as_genre`
--

INSERT INTO `film_as_genre` (`id_film_as_genre`, `id_film`, `id_genre`) VALUES
(1, 1, 1),
(2, 1, 13),
(3, 2, 7),
(4, 3, 5),
(5, 3, 10),
(6, 3, 22),
(7, 4, 7),
(8, 4, 9),
(9, 4, 22),
(10, 5, 15),
(11, 5, 22),
(12, 6, 10),
(13, 7, 3),
(14, 8, 3),
(15, 8, 4),
(16, 9, 7),
(17, 10, 8),
(18, 10, 16),
(19, 11, 10),
(20, 11, 19),
(21, 12, 18),
(22, 12, 22),
(23, 13, 7),
(24, 13, 10),
(25, 14, 10),
(26, 14, 14),
(27, 14, 22),
(28, 15, 7),
(29, 16, 1),
(30, 16, 22),
(31, 17, 10),
(32, 18, 11),
(33, 18, 15),
(34, 18, 22),
(35, 19, 4),
(36, 20, 6),
(37, 20, 12),
(38, 21, 4),
(39, 21, 10),
(40, 21, 15),
(41, 22, 1),
(42, 22, 4),
(43, 22, 15),
(44, 22, 22),
(45, 23, 13),
(46, 23, 15),
(47, 23, 22),
(48, 24, 1),
(49, 24, 7),
(50, 25, 10),
(51, 25, 20),
(52, 26, 20),
(53, 26, 22),
(54, 27, 10),
(55, 27, 21),
(56, 28, 10),
(57, 28, 17),
(58, 29, 1),
(59, 29, 7),
(60, 29, 13),
(61, 29, 15),
(62, 29, 22),
(63, 30, 7),
(64, 30, 20),
(65, 31, 4),
(66, 31, 16),
(67, 32, 16),
(68, 32, 22),
(69, 33, 10),
(70, 33, 22),
(71, 34, 10),
(72, 35, 1),
(73, 35, 7),
(74, 36, 22),
(75, 37, 16),
(76, 37, 22),
(77, 38, 2),
(78, 38, 10),
(79, 39, 7),
(80, 40, 10),
(81, 41, 10),
(82, 42, 10);

-- --------------------------------------------------------

--
-- Structure de la table `film_as_real`
--

DROP TABLE IF EXISTS `film_as_real`;
CREATE TABLE IF NOT EXISTS `film_as_real` (
  `id_film_as_real` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_film` int(10) UNSIGNED NOT NULL,
  `id_realisateur` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_film_as_real`),
  KEY `id_realisateur_idx` (`id_realisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `film_as_real`
--

INSERT INTO `film_as_real` (`id_film_as_real`, `id_film`, `id_realisateur`) VALUES
(1, 1, 30),
(2, 2, 7),
(3, 3, 12),
(4, 4, 34),
(5, 5, 13),
(6, 6, 13),
(7, 7, 41),
(8, 8, 16),
(9, 9, 11),
(10, 10, 38),
(11, 11, 40),
(12, 12, 42),
(13, 13, 27),
(14, 14, 36),
(15, 15, 23),
(16, 16, 29),
(17, 17, 8),
(18, 18, 9),
(19, 19, 19),
(20, 20, 19),
(21, 21, 19),
(22, 22, 22),
(23, 23, 1),
(24, 24, 37),
(25, 25, 21),
(26, 26, 18),
(27, 27, 8),
(28, 28, 3),
(29, 29, 33),
(30, 30, 24),
(31, 31, 4),
(32, 32, 5),
(33, 33, 6),
(34, 34, 28),
(35, 35, 15),
(36, 36, 32),
(37, 37, 39),
(38, 38, 35),
(39, 39, 2),
(40, 40, 31),
(41, 41, 17),
(42, 42, 20),
(43, 32, 25),
(44, 15, 10),
(45, 13, 14),
(46, 9, 26);

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

DROP TABLE IF EXISTS `genre`;
CREATE TABLE IF NOT EXISTS `genre` (
  `id_genre` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `gen_genre` varchar(255) NOT NULL,
  PRIMARY KEY (`id_genre`),
  UNIQUE KEY `id_genre_UNIQUE` (`id_genre`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`id_genre`, `gen_genre`) VALUES
(1, 'Action'),
(2, 'Arts Martiaux'),
(3, 'Aventure'),
(4, 'Biopic'),
(5, 'Combat'),
(6, 'Comédie'),
(7, 'Comédie dramatique'),
(8, 'Drame'),
(9, 'Drive'),
(10, 'Ecologie'),
(11, 'Epouvante-horreur'),
(12, 'Fantastique'),
(13, 'Fantasy'),
(14, 'Film à énigme'),
(15, 'Film biographique'),
(16, 'Film d\'amour'),
(17, 'Humour noir'),
(18, 'Musique'),
(19, 'Policier'),
(20, 'Romance'),
(21, 'Science fiction'),
(22, 'Thriller');

-- --------------------------------------------------------

--
-- Structure de la table `realisateur`
--

DROP TABLE IF EXISTS `realisateur`;
CREATE TABLE IF NOT EXISTS `realisateur` (
  `id_realisateur` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rea_nom` varchar(255) NOT NULL,
  `rea_prenom` varchar(255) NOT NULL,
  PRIMARY KEY (`id_realisateur`),
  UNIQUE KEY `id_realisateur_UNIQUE` (`id_realisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `realisateur`
--

INSERT INTO `realisateur` (`id_realisateur`, `rea_nom`, `rea_prenom`) VALUES
(1, 'Adam', 'Wingard'),
(2, 'Alain', 'Berberian'),
(3, 'Andreï', 'Tarkovski'),
(4, 'Andrew', 'Adamson'),
(5, 'Andy', 'Wachowski'),
(6, 'Lana', 'Wachowski'),
(7, 'Danny', 'Boyle'),
(8, 'Dany', 'Boon'),
(9, 'David', 'Fincher'),
(10, 'David', 'Lynch'),
(11, 'Fabrice', 'Éboué'),
(12, 'Lionel', 'Steketee'),
(13, 'Fernando León', 'de Aranoa'),
(14, 'Franck', 'Darabont'),
(15, 'Gérard', 'Krawczyk'),
(16, 'Gisaburo', 'Sugii'),
(17, 'Giuseppe', 'Tornatore'),
(18, 'Guy', 'Ritchie'),
(19, 'Hayao', 'Miyazaki'),
(20, 'Isao', 'Takahata'),
(21, 'Jacques', 'Audiard'),
(22, 'James', 'Wong'),
(23, 'Joel', 'Cohen'),
(24, 'Ethan', 'Cohen'),
(25, 'Gastón', 'Duprat'),
(26, 'Mariano', 'Cohn'),
(27, 'Mathieu', 'Kassovitz'),
(28, 'Nicolas', 'Winding Refn'),
(29, 'Paul', 'W.S. Anderson'),
(30, 'Philip', 'Kaufman'),
(31, 'Ridley', 'Scott'),
(32, 'Robert', 'Rodriguez'),
(33, 'Robert', 'Zemekis'),
(34, 'Spike', 'Jonze'),
(35, 'Stanley', 'Kubrick'),
(36, 'Stephen', 'Chow'),
(37, 'Tim', 'Burton'),
(38, 'Tim', 'Miller'),
(39, 'Tony', 'Gatlif'),
(40, 'Wilson', 'Yip'),
(41, 'Wim', 'Wenders'),
(42, 'Xavier', 'Dolan');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
