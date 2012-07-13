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

-- NPC Apothecary Antonivich (TBC)
UPDATE creature_template SET gossip_menu_id=7810 WHERE entry=16588;

DELETE FROM gossip_menu_option WHERE menu_id=7810;
INSERT INTO gossip_menu_option (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_poi_id,action_script_id,box_coded,box_money,box_text,cond_1,cond_1_val_1,cond_1_val_2,cond_2,cond_2_val_1,cond_2_val_2,cond_3,cond_3_val_1,cond_3_val_2) VALUES
(7810,0,3,'I would like to train.',5,16,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(7810,1,1,'Let me browse your goods.',3,128,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0);

-- NPC Innkeeper Bazil Olof'tazun (TBC)
UPDATE creature_template SET gossip_menu_id=7288 WHERE entry=18905;

DELETE FROM gossip_menu_option WHERE menu_id=7288;
INSERT INTO gossip_menu_option (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_poi_id,action_script_id,box_coded,box_money,box_text,cond_1,cond_1_val_1,cond_1_val_2,cond_2,cond_2_val_1,cond_2_val_2,cond_3,cond_3_val_1,cond_3_val_2) VALUES
(7288,0,5,'Make this inn your home.',8,65536,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(7288,1,1,'Let me browse your goods.',3,128,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0);

-- NPC Floyd Pinkus (TBC)
UPDATE creature_template SET gossip_menu_id=7290 WHERE entry=16602;

DELETE FROM gossip_menu_option WHERE menu_id=7290;
INSERT INTO gossip_menu_option (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_poi_id,action_script_id,box_coded,box_money,box_text,cond_1,cond_1_val_1,cond_1_val_2,cond_2,cond_2_val_1,cond_2_val_2,cond_3,cond_3_val_1,cond_3_val_2) VALUES
(7290,0,5,'A fine offer, Floyd. I wish to make Hellfire Peninsula my home.',8,65536,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(7290,1,1,'I\'m looking for some specialty goods. Let me browse your wares, Floyd.',3,128,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0);

DELETE FROM gossip_menu WHERE entry=7290;
INSERT INTO gossip_menu (entry, text_id) VALUES
(7290, 8634);

-- NPC Magister Aledis, mount and gossip (TBC)
DELETE FROM creature_template_addon WHERE entry=20159;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_flags,emote,moveflags,auras) VALUES
(20159,18696,0,0,0,0,0,'');

UPDATE creature_template SET gossip_menu_id=8081, npcflag=3 WHERE entry=20159;

DELETE FROM gossip_menu_option WHERE menu_id=8081;
INSERT INTO gossip_menu_option (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_poi_id,action_script_id,box_coded,box_money,box_text,cond_1,cond_1_val_1,cond_1_val_2,cond_2,cond_2_val_1,cond_2_val_2,cond_3,cond_3_val_1,cond_3_val_2) VALUES
(8081,0,0,'Magistrix Carinda has sent me to ask you about Arelion\'s secret.  Who was he seeing?',1,1,-1,0,0,0,0,'',9,10286,0,0,0,0,0,0,0);

DELETE FROM gossip_menu WHERE entry=8081;
INSERT INTO gossip_menu (entry, text_id) VALUES
(8081,9988);

-- NPC Kagrosh right position (TBC)
UPDATE creature SET position_x=-3421.365, position_y=2289.388, position_z=33.63479, orientation=3.874631 WHERE guid=86870;

-- NPC Flanis Swiftwing right position and add missing aura (TBC)
UPDATE creature SET position_x=-3410.419, position_y=2320.867, position_z=37.1792, orientation=4.36332 WHERE guid=86861;
UPDATE creature_template_addon SET auras=29266 WHERE entry=21727;
