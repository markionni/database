-- ALTER TABLE db_update_version CHANGE COLUMN db_update_version_0008 db_update_version_0009 bit;

-- Archimonde - Mount Hyjal (Xfurry)
DELETE FROM creature WHERE id IN (22418,17968);
INSERT INTO creature (guid,id,map,spawnMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(99644,22418,534,1,18783,0,5503.713,-3523.436,1608.781,0.0,604800,0,0,7588,0,0,0);

DELETE FROM spell_script_target WHERE entry=32111;
INSERT INTO spell_script_target VALUES
(32111,1,17946);

-- ------------------------------------ --
--              Zul'Aman                --
-- ------------------------------------ --

-- Fix Nalorakk Event
UPDATE creature_template SET unit_flags=unit_flags|33600 WHERE entry=23576;

-- ------------------------------------ --
--              Karazhan                --
-- ------------------------------------ --

UPDATE creature_template SET unit_flags=unit_flags&~33554432 WHERE entry=17096;

UPDATE creature_template SET MovementType=0 WHERE entry IN (17007,19872,19873,19874,19875,19876);

DELETE FROM creature_linking_template WHERE entry IN (17007,19872,19873,19874,19875,19876);
INSERT INTO creature_linking_template VALUES
(17007,532,15687,3,0),
(19872,532,15687,3,0),
(19873,532,15687,3,0),
(19874,532,15687,3,0),
(19875,532,15687,3,0),
(19876,532,15687,3,0);

-- ------------------------------------ --
--             Scriptdev2               --
-- ------------------------------------ --

-- r2561
UPDATE creature_template SET ScriptName='' WHERE entry=18095;
UPDATE creature_template SET ScriptName='npc_doomfire_spirit' WHERE entry=18104;
