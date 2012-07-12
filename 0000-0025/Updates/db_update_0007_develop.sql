-- ALTER TABLE db_update_version CHANGE COLUMN db_update_version_0006 db_update_version_0007 bit;

-- Missing Shattrath Guild Banks (Sanctum)
DELETE FROM gameobject where id in (188126,188127);
INSERT INTO gameobject (id, map, spawnMask, position_x ,position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(188126,530,1,-1709.69,5461.01,-7.92767,1.85005,0,0,0.798635,0.601815,180,255,1),
(188126,530,1,-1745.81,5533.84,-7.92614,-0.977383,0,0,-0.469471,0.882948,180,255,1),
(188127,530,1,-1987.36,5320.47,-6.77673,-1.23918,0,0,-0.580703,0.814116,180,255,1),
(188127,530,1,-2025.81,5396.9,-6.56243,2.11185,0,0,0.870356,0.492424,180,255,1);
