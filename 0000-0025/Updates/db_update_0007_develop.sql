-- ALTER TABLE db_update_version CHANGE COLUMN db_update_version_0006 db_update_version_0007 bit;

-- Missing Shattrath Guild Banks (Sanctum)
DELETE FROM gameobject WHERE id IN (188126,188127);
INSERT INTO gameobject (guid,id, map, spawnMask, position_x ,position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(197891,188126,530,1,-1709.69,5461.01,-7.92767,1.85005,0,0,0.798635,0.601815,180,255,1),
(197892,188126,530,1,-1745.81,5533.84,-7.92614,-0.977383,0,0,-0.469471,0.882948,180,255,1),
(197893,188127,530,1,-1987.36,5320.47,-6.77673,-1.23918,0,0,-0.580703,0.814116,180,255,1),
(197894,188127,530,1,-2025.81,5396.9,-6.56243,2.11185,0,0,0.870356,0.492424,180,255,1);

-- Pet Trainer Fix (Sanctum)
UPDATE creature_template SET trainer_class=3 WHERE entry=16675;

-- Quest 411
UPDATE db_script_string SET entry=2000000210 WHERE entry=2000000090;
UPDATE db_script_string SET entry=2000000211 WHERE entry=2000000091;

DELETE FROM quest_end_scripts WHERE id=411;
INSERT INTO quest_end_scripts VALUES
(411,2,15,7673,0,0,0,4,'0','0','0','0',0,0,0,0,'Bethor use Nether Gem'),
(411,7,10,5666,23000,0,0,0,'0','0','0','0',1768.58,55.4891,-46.3198,2.28248,'Summon Visage'),
(411,23,0,0,0,5666,10,0,'2000000210','0','0','0',0,0,0,0,'Visage Say 3'),
(411,23,1,2,0,5666,10,0,'0','0','0','0',0,0,0,0,''),
(411,30,0,0,0,1498,10,0,'2000000211','0','0','0',0,0,0,0,'Bethor Say');
