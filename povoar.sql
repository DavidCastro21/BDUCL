PRAGMA foreign_keys = ON;
--Inserir estádios
INSERT /*or REPLACE*/ INTO Estadio(id, nome) VALUES
(1101,"Etihad Stadium"),
(1202,"Parc des Princes"),
(1303,"Red Bull Arena Leipzig"),
(1404,"Jan Breydel"),

(2101,"Anfield Road"),
(2202,"Cívitas Metropolitano"),
(2303,"Estádio do Dragão"),
(2404,"San Siro"),

(3101,"Amsterdam Arena"),
(3202, "Estádio José Alvalade"),
(3303,"Signal Iduna Park"),
(3404,"Vodafone Park"),

(4101,"Santiago Bernabéu Stadium"),
(4202, "Giuseppe Meazza"),
(4303,"Sheriff Stadium"),
(4404,"Donbass Arena"),

(5101,"Allianz Arena"),
(5202, "Estádio da Luz"),
(5303,"Camp Nou"),
(5404,"Stade de Suisse"),

(6101,"Old Trafford"),
(6202, "Estadio de la Cerámica"),
(6303, "Gewiss Stadium"),
(6404,"Olimpiyskiy National Sports Complex"),

(7101, "Stade Pierre-Mauroy"),
(7202, "Red Bull Arena Salzburg"),
(7303, "Estádio Ramón Sánchez Pizjuán"),
(7404,"Volkswagen Arena"),

(8101, "Allianz Stadium"),
(8202, "Stamford Bridge"),
(8303, "Gazprom Arena"),
(8404,"Eleda Stadion"),

(9101, "Stade de France");

--Inserir Equipas
INSERT /*or REPLACE*/ INTO Equipa(id,nome,país,idEstadio) VALUES
(1001,"Manchester City", "Inglaterra",1101),
(1002,"Paris SG", "França", 1202),
(1003,"RB Leipzig", "Alemanha", 1303),
(1004,"Club Brugge", "Bélgica",1404),

(2001,"Liverpool",   "Inglaterra", 2101),
(2002,"Atlético Madrid","Espanha", 2202),
(2003,"FC Porto", "Portugal", 2303),
(2004,"AC Milan", "Itália", 2404),

(3001,"Ajax", "Países Baixos", 3101),
(3002,"Sporting", "Portugal", 3202),
(3003,"Borussia Dortmund", "Alemanha", 3303),
(3004,"Besiktas", "Turquia", 3404),

(4001,"Real Madrid", "Espanha", 4101),
(4002,"Internazionale", "Itália", 4202),
(4003,"Sheriff", "Moldávia", 4303),
(4004,"Shakhtar Donetsk", "Ucrânia", 4404),

(5001,"Bayern München", "Alemanha", 5101),
(5002,"Benfica", "Portugal", 5202),
(5003,"Barcelona", "Espanha", 5303),
(5004,"Dynamo Kyiv", "Ucrânia", 5404),

(6001,"Manchester United", "Inglaterra", 6101),
(6002,"Villarreal", "Espanha", 6202),
(6003,"Atalanta", "Itália", 6303),
(6004,"Young Boys", "Suíça", 6404),

(7001,"Lille", "França", 7101),
(7002,"RB Salzburg", "Áustria", 7202),
(7003,"Sevilla", "Espanha", 7303),
(7004,"Wolfsburg", "Alemanha", 7404),

(8001,"Juventus", "Itália", 8101),
(8002,"Chelsea", "Inglaterra", 8202),
(8003,"Zenit", "Rússia", 8303),
(8004,"Malmö", "Suécia", 8404);

--Inserir Fases
INSERT /*or REPLACE*/ INTO Fase(id, nome) VALUES 
(0032, "Fase de Grupos"),
(0016, "Oitavos-de-Final"),
(0008, "Quartos-de-Final"),
(0004, "Meias-Finais"),
(0002, "Final");

--Inserir Jornadas 
INSERT /*or REPLACE*/ INTO Jornada(id, numero, idFase) VALUES 
(321, 1, 0032),
(322, 2, 0032),
(323, 3, 0032),
(324, 4, 0032),
(325, 5, 0032),
(326, 6, 0032),
(161, 1, 0016),
(162, 2, 0016),
(81, 1, 0008),
(82, 2, 0008),
(41, 1, 0004),
(42, 2, 0004),
(21, 1, 0002);

--Inserir Jogos
INSERT /*or REPLACE*/ INTO Jogo(id, data, idJornada, idVisitada, idVisitante, idEstadio) VALUES 
(32113, '2021-09-15', 321, 1001, 1003, 1101),
(32142, '2021-09-15', 321, 1004, 1002, 1404),

(32223, '2021-09-15', 321, 2002, 2003, 2202),
(32214, '2021-09-15', 321, 2001, 2004, 2101),

(32343, '2021-09-15', 321, 3004, 3003, 3404),
(32321, '2021-09-15', 321, 3002, 3001, 3202),

(32434, '2021-09-15', 321, 4003, 4004, 4303),
(32421, '2021-09-15', 321, 4002, 4001, 4202),

(32531, '2021-09-14', 321, 5003, 5001, 5303),
(32542, '2021-09-14', 321, 5004, 5002, 5404),

(32641, '2021-09-14', 321, 6004, 6001, 6404),
(32623, '2021-09-14', 321, 6002, 6003, 6202),

(32732, '2021-09-14', 321, 7003, 7002, 7303),
(32714, '2021-09-14', 321, 7001, 7004, 7101),

(32823, '2021-09-14', 321, 8002, 8003, 8202),
(32841, '2021-09-14', 321, 8004, 8001, 8404),

--2journey
(32121, '2021-09-28', 322, 1002, 1001, 1202),
(32134, '2021-09-28', 322, 1003, 1004, 1303),

(32242, '2021-09-28', 322, 2004, 2002, 2404),
(32231, '2021-09-28', 322, 2003, 2001, 2303),

(32314, '2021-09-28', 322, 3001, 3004, 3101),
(32332, '2021-09-28', 322, 3003, 3002, 3303),

(32442, '2021-09-28', 322, 4004, 4002, 4404),
(32413, '2021-09-28', 322, 4001, 4003, 4101),

(32514, '2021-09-29', 322, 5001, 5004, 5101),
(32523, '2021-09-29', 322, 5002, 5003, 5202),

(32634, '2021-09-29', 322, 6003, 6004, 6303),
(32612, '2021-09-29', 322, 6001, 6002, 6101),

(32721, '2021-09-29', 322, 7002, 7001, 7202),
(32743, '2021-09-29', 322, 7004, 7003, 7404),

(32834, '2021-09-29', 322, 8003, 8004, 8303),
(32812, '2021-09-29', 322, 8001, 8002, 8101),

--3journey
(32141, '2021-10-19', 323, 1004, 1001, 1404),
(32123, '2021-10-19', 323, 1002, 1003, 1202),

(32221, '2021-10-19', 323, 2002, 2001, 2202),
(32234, '2021-10-19', 323, 2003, 2004, 2303),

(32342, '2021-10-19', 323, 3004, 3002, 3404),
(32313, '2021-10-19', 323, 3001, 3003, 3101),

(32441, '2021-10-19', 323, 4004, 4001, 4404),
(32423, '2021-10-19', 323, 4002, 4003, 4202),

(32534, '2021-10-20', 323, 5003, 5004, 5303),
(32521, '2021-10-20', 323, 5002, 5001, 5202),

(32642, '2021-10-20', 323, 6004, 6002, 6404),
(32613, '2021-10-20', 323, 6001, 6003, 6101),

(32724, '2021-10-20', 323, 7002, 7004, 7202),
(32713, '2021-10-20', 323, 7001, 7003, 7101),

(32824, '2021-10-20', 323, 8002, 8004, 8202),
(32831, '2021-10-20', 323, 8003, 8001, 8303),

--4journey
(32114, '2021-11-03', 324, 1001, 1004, 1101),
(32132, '2021-11-03', 324, 1003, 1002, 1303),

(32243, '2021-11-03', 324, 2004, 2003, 2404),
(32212, '2021-11-03', 324, 2001, 2002, 2101),

(32324, '2021-11-03', 324, 3002, 3004, 3202),
(32331, '2021-11-03', 324, 3003, 3001, 3303),

(32414, '2021-11-03', 324, 4001, 4004, 4101),
(32432, '2021-11-03', 324, 4003, 4002, 4303),

(32543, '2021-11-02', 324, 5004, 5003, 5404),
(32512, '2021-11-02', 324, 5001, 5002, 5101),

(32624, '2021-11-02', 324, 6002, 6004, 6202),
(32631, '2021-11-02', 324, 6003, 6001, 6303),

(32742, '2021-11-02', 324, 7004, 7002, 7404),
(32731, '2021-11-02', 324, 7003, 7001, 7303),

(32842, '2021-11-02', 324, 8004, 8002, 8404),
(32813, '2021-11-02', 324, 8001, 8003, 8101),

--5journey
(32112, '2021-11-24', 325, 1001, 1002, 1101),
(32143, '2021-11-24', 325, 1004, 1003, 1404),

(32224, '2021-11-24', 325, 2002, 2004, 2202),
(32213, '2021-11-24', 325, 2001, 2003, 2101),

(32341, '2021-11-24', 325, 3004, 3001, 3404),
(32323, '2021-11-24', 325, 3002, 3003, 3202),

(32424, '2021-11-24', 325, 4002, 4004, 4202),
(32431, '2021-11-24', 325, 4003, 4001, 4303),

(32541, '2021-11-23', 325, 5004, 5001, 5404),
(32532, '2021-11-23', 325, 5003, 5002, 5303),

(32621, '2021-11-23', 325, 6002, 6001, 6202),
(32643, '2021-11-23', 325, 6004, 6003, 6404),

(32734, '2021-11-23', 325, 7003, 7004, 7303),
(32712, '2021-11-23', 325, 7001, 7002, 7101),

(32843, '2021-11-23', 325, 8004, 8003, 8404),
(32821, '2021-11-23', 325, 8002, 8001, 8202),

--6journey
(32124, '2021-12-07', 326, 1002, 1004, 1202),
(32131, '2021-12-07', 326, 1003, 1001, 1303),

(32232, '2021-12-07', 326, 2003, 2002, 2303),
(32241, '2021-12-07', 326, 2004, 2004, 2404),

(32334, '2021-12-07', 326, 3003, 3004, 3303),
(32312, '2021-12-07', 326, 3001, 3002, 3101),

(32412, '2021-12-07', 326, 4001, 4002, 4101),
(32443, '2021-12-07', 326, 4004, 4003, 4404),

(32524, '2021-12-08', 326, 5002, 5004, 5202),
(32513, '2021-12-08', 326, 5001, 5003, 5101),

(32614, '2021-12-08', 326, 6001, 6004, 6101),
(32632, '2021-12-09', 326, 6003, 6002, 6303),

(32723, '2021-12-08', 326, 7002, 7003, 7202),
(32741, '2021-12-08', 326, 7004, 7001, 7404),

(32814, '2021-12-08', 326, 8001, 8004, 8101),
(32832, '2021-12-08', 326, 8003, 8002, 8303),

--1a 8avos
(16101, '2022-02-15', 161, 3002, 1001, 3202),
(16102, '2022-02-15', 161, 1002, 4001, 1202),
(16103, '2022-02-16', 161, 7002, 5001, 7202),
(16104, '2022-02-16', 161, 4002, 2001, 4202),
(16105, '2022-02-22', 161, 8002, 7001, 8202),
(16106, '2022-02-22', 161, 6002, 8001, 6202),
(16107, '2022-02-23', 161, 5002, 3001, 5202),
(16108, '2022-02-23', 161, 2002, 6001, 2202),

--2a 8avos
(16201, '2022-03-08', 162, 5001, 7002, 7202),
(16202, '2022-03-08', 162, 2001, 4002, 2101),
(16203, '2022-03-09', 162, 1001, 3002, 1101),
(16204, '2022-03-09', 162, 4001, 1002, 4101),
(16205, '2022-03-15', 162, 6001, 2002, 6101),
(16206, '2022-03-15', 162, 3001, 5002, 3101),
(16207, '2022-03-16', 162, 8001, 6002, 8101),
(16208, '2022-03-16', 162, 7001, 8002, 7101),

--1a 4os
(8101, '2022-04-05', 81, 5002, 2001, 5202),
(8102, '2022-04-05', 81, 1001, 2002, 1101),
(8103, '2022-04-06', 81, 6002, 5001, 6202),
(8104, '2022-04-06', 81, 8002, 4001, 8202),
--2a 4os
(8201, '2022-04-12', 82, 5001, 6002, 5101),
(8202, '2022-04-12', 82, 4001, 8002, 4101),
(8203, '2022-04-13', 82, 2001, 5002, 2101),
(8204, '2022-04-13', 82, 2002, 1001, 2202),

--1a meias
(4101, '2022-04-26', 41, 1001, 4001, 1101),
(4102, '2022-04-27', 41, 2001, 6002, 2101),
--2a meias
(4201, '2022-05-03', 42, 6002, 2001, 6202),
(4202, '2022-05-04', 42, 4001, 1001, 4101),

--Final
(2101, '2022-05-28', 21, 2001, 4001, 9101);

