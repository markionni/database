-- ALTER TABLE db_update_version CHANGE COLUMN db_update_version_0008 db_update_version_0009 bit;

-- Archimonde - Mount Hyjal (Xfurry)
DELETE FROM creature WHERE id IN (22418,17968);
INSERT INTO creature (id,map,spawnMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(22418,534,1,18783,0,5503.713,-3523.436,1608.781,0.0,604800,0,0,7588,0,0,0);

DELETE FROM spell_script_target WHERE entry=32111;
INSERT INTO spell_script_target VALUES
(32111,1,17946);

-- ------------------------------------ --
--             Scriptdev2               --
-- ------------------------------------ --

UPDATE creature_template SET ScriptName='' WHERE entry=18095;
UPDATE creature_template SET ScriptName='npc_doomfire_spirit' WHERE entry=18104;
