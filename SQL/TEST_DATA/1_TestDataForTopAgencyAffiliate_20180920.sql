USE CPL

UPDATE SysUser Set AgencyId = 1 WHERE Id = 1;
UPDATE SysUser Set AffiliateId = 1 WHERE Id = 1;
INSERT INTO Agency VALUES (1,1,1,1,1,1,1,1,1);
INSERT INTO Payment VALUES (1,'2018-09-20', null, 100,100,100,10,10,10);
