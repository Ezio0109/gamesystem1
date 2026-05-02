-- 10 Gamers
INSERT INTO gamer (username, email) VALUES 
('Anurag', 'anurag@gmail.com'),
('EzioW', 'eziow@gmail.com'),
('CyberPunk2077', 'cyber@gmail.com'),
('GhostSniper', 'ghost@gmail.com'),
('PixelKing', 'pixel@gmail.com'),
('LootGoblin', 'loot@gmail.com'),
('TarnishedOne', 'tarnished@gmail.com'),
('KratosFan', 'kratos@gmail.com'),
('NoobMaster', 'noob@gmail.com'),
('ProGamer', 'pro@gmail.com');

--10 Video Games
INSERT INTO video_game (title, genre) VALUES 
('Elden Ring', 'RPG'),
('God of War', 'Action'),
('Black Myth: Wukong', 'Action RPG'),
('Resident Evil 4', 'Survival Horror'),
('Call of Duty', 'FPS'),
('Cyberpunk 2077', 'RPG'),
('Minecraft', 'Sandbox'),
('Valorant', 'Tactical Shooter'),
('Dark Souls 3', 'RPG'),
('Red Dead Redemption 2', 'Open World');


INSERT INTO gamer_library (gamer_id, game_id) VALUES 

(2, 1), (2, 2), (2, 3), (2, 4), (2, 5), (2, 6), (2, 7), (2, 8), (2, 9), (2, 10),
(1, 7), (1, 8),
(3, 6), (4, 4), (5, 7), (6, 8), (7, 1), (8, 2), (9, 9), (10, 5);