USE `bdd-green`;


DELETE FROM users;
DELETE FROM admins;
DELETE FROM quizz;
DELETE FROM question;


-- Utilisateurs
INSERT INTO `users` (id_user, `username`,`email`,`password`,`score`) VALUES
  (1, 'alice',  'alice@example.com',  SHA2('passAlice',256),  0),
  (2, 'bob','bob@example.com',    SHA2('passBob',256),    0),
  (3, 'admin','admin@example.com',  SHA2('passAdmin',256),  0);


-- Charlie devient admin
INSERT INTO `admins` (`id_user`) VALUES (3);

-- Quiz IT For Green
INSERT INTO `quizz` (id_quizz, `name`,`category`) VALUES
  (1, 'Eco-réseaux et protocoles','IT For Green'),
  (2, 'Data centers verts','GreenIT');

INSERT INTO `question` (`quizz_id`,`question`,`answer1`,`answer2`, `correct_answer_is_1`) VALUES
  (1, 'Quel protocole HTTP est le plus économe en bande passante ?', 'HTTP/1.0',              'HTTP/2',                FALSE),
  (1, 'Quelle technique réduit la consommation CPU ?',                   'Mise en cache',         'Compression à la volée', TRUE),
  (1, 'Lequel de ces protocoles est conçu pour les objets connectés à faible consommation ?', 'MQTT', 'FTP', TRUE),
  (1, 'Quel mécanisme HTTP permet de réduire la taille des ressources transférées ?',           'Compression GZIP',      'Chunked encoding',      TRUE),
  (1, 'Quel header HTTP contrôle la mise en cache côté client ?',                               'Cache-Control',         'Content-Type',         TRUE),
  (1, 'Quel protocole chiffre nativement les échanges web ?',                                  'HTTPS',                 'HTTP/2',               TRUE),
  (1, 'Quel algorithme de chiffrement asymétrique est le plus léger ?',                        'ECDSA',                 'RSA',                  TRUE),
  (1, 'Quel protocole HTTP utilise le multiplexing de flux pour améliorer l’efficacité ?',       'HTTP/2',                'HTTP/1.1',             TRUE),
  (1, 'Quelle technique regroupe plusieurs images en une seule pour réduire les requêtes ?',     'CSS sprites',           'Lazy-loading',         TRUE),
  (1, 'Quel mécanisme place les ressources statiques plus près de l’utilisateur ?',             'CDN',                   'Serveur d’origine',    TRUE);

-- 10 questions pour « Data centers verts » (id_quizz = 2)
INSERT INTO `question` (`quizz_id`,`question`,`answer1`,`answer2`, `correct_answer_is_1`) VALUES
  (2, 'Quel pays est pionnier des data centers refroidis par eau de mer ?', 'Suède',       'Canada',      TRUE),
  (2, 'Quelle énergie verte alimente ces centres ?',                         'Éolien',      'Charbon',     TRUE),
  (2, 'Quel indicateur mesure l’efficacité énergétique d’un datacenter ?',   'PUE',         'CPU util.',   TRUE),
  (2, 'Quelle technologie de refroidissement utilise de l’air extérieur ?',  'Free cooling','Chillers',    TRUE),
  (2, 'Quel combustible vert peut alimenter un datacenter hybride ?',        'Biogaz',      'Gaz naturel', TRUE),
  (2, 'Quelle pratique réduit la consommation de serveurs ?',                'Virtualisation','Overprovisioning', TRUE),
  (2, 'Lequel de ces labels certifie l’usage d’énergies renouvelables ?',     'GreenPower',  'CarbonTrust', FALSE),
  (2, 'Quelle technologie utilise l’IA pour optimiser la consommation énergétique ?', 'Machine learning adaptatif', 'Rafraîchissement manuel', TRUE),
  (2, 'Quelle pratique sépare efficacement les flux d’air chaud et froid ?',  'Couloirs chauds/froids','Mélange d’air', TRUE),
  (2, 'Quel logiciel centralise la supervision énergétique d’un datacenter ?',  'DCIM',        'ERP',         TRUE);
  
  
  SELECT * FROM users;
  SELECT * FROM admins;
  SELECT * FROM quizz;
  SELECT * FROM question;

